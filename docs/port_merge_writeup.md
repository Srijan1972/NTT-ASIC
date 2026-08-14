# `ntt_engine_256` Port Merge — Before / After

**Run reference:** `RUN_merged_2026.08.08_20.31.04`

## 1. Unchanged ports 

| Port | Width | Direction | Purpose |
|---|---|---|---|
| `clk` | 1 | in | clock |
| `rst_n` | 1 | in | active-low reset |
| `start` | 1 | in | begin operation |
| `op` | [2:0] | in | operation select (NTT/INTT/COPY/MAC/REDUCE) |
| `slot_a` | [1:0] | in | operand slot A |
| `slot_b` | [1:0] | in | operand slot B |
| `slot_c` | [1:0] | in | operand slot C |
| `mac_init` | 1 | in | MAC accumulator init |
| `busy` | 1 | out | engine busy |
| `done` | 1 | out | operation complete |

**10 ports, 10 bits** — no change.

## 2. Pre-merge memory-facing ports (removed)

| Port | Width | Direction | Group |
|---|---|---|---|
| `ext_we` | 1 | in | coeff write |
| `ext_wslot` | [1:0] | in | coeff write |
| `ext_waddr` | [7:0] | in | coeff write |
| `ext_wdata` | [31:0] | in | coeff write |
| `ext_re` | 1 | in | coeff read |
| `ext_rslot` | [1:0] | in | coeff read |
| `ext_raddr` | [7:0] | in | coeff read |
| `ext_rdata` | [31:0] | out | coeff read |
| `ext_rvalid` | 1 | out | coeff read |
| `zload_we` | 1 | in | zeta load |
| `zload_addr` | [8:0] | in | zeta load |
| `zload_data` | [31:0] | in | zeta load |

**12 ports, 129 bits total**, split across three groups that never fire
in the same cycle in either testbench's stimulus.

## 3. Post-merge memory-facing ports (new)

| Port | Width | Direction | Purpose |
|---|---|---|---|
| `mem_we` | 1 | in | write strobe |
| `mem_re` | 1 | in | read strobe (coeff read-back only) |
| `mem_target` | 1 | in | 0 = coeff banks, 1 = zeta store |
| `mem_slot` | [1:0] | in | coeff slot (ignored when `mem_target`=zeta) |
| `mem_addr` | [8:0] | in | address ([7:0] used for coeff, full [8:0] for zeta) |
| `mem_wdata` | [31:0] | in | shared write data (coeff or zeta) |
| `mem_rdata` | [31:0] | out | coeff read data |
| `mem_rvalid` | 1 | out | coeff read-data valid |

**8 ports, 79 bits total.**

## 4. How the old ports map onto the new ones

| Old signal | Derived from |
|---|---|
| `ext_we` | `mem_we && (mem_target == MEM_COEFF)` |
| `ext_wslot` | `mem_slot` |
| `ext_waddr` | `mem_addr[7:0]` |
| `ext_wdata` | `mem_wdata` |
| `ext_re` | `mem_re && (mem_target == MEM_COEFF)` |
| `ext_rslot` | `mem_slot` |
| `ext_raddr` | `mem_addr[7:0]` |
| `ext_rdata` (out) | drives `mem_rdata` directly |
| `ext_rvalid` (out) | drives `mem_rvalid` directly |
| `zload_we` | `mem_we && (mem_target == MEM_ZETA)` |
| `zload_addr` | `mem_addr` (full 9 bits) |
| `zload_data` | `mem_wdata` |

`MEM_COEFF = 1'b0`, `MEM_ZETA = 1'b1`.

## 5. What's actually shared (and the invariants that make it safe)

- **`mem_addr`** carries `ext_waddr`, `ext_raddr`, *and* `zload_addr`.
  Safe only if a coeff write and a coeff read never happen in the same
  cycle, and a zeta load never overlaps a coeff load.
- **`mem_wdata`** carries both `ext_wdata` and `zload_data`.
  Same overlap constraint as above.
- **`mem_slot`** carries both `ext_wslot` and `ext_rslot`.
  Safe because coeff write and coeff read never co-occur.
