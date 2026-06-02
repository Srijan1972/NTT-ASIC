<project xmlns="com.autoesl.autopilot.project" name="hls-design" top="ntt_kernel" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" optimizeCompile="true" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="hls-design/ntt-kernel.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="hls-design/ntt-kernel.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../ntt-test.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="ntt-asic" status="active"/>
    </solutions>
</project>

