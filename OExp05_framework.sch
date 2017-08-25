<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="CR" />
        <signal name="RDY" />
        <signal name="BTN_OK(3:0)" />
        <signal name="Pulse(3:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="rst" />
        <signal name="Div(20)" />
        <signal name="Div(25)" />
        <signal name="SW_OK(0)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="Disp_num(31:0)" />
        <signal name="point_out(7:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="V5" />
        <signal name="N0" />
        <signal name="SW_OK(7:5)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="Div(31:0)" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="LED_PEN" />
        <signal name="led_clrn" />
        <signal name="SW_OK(2)" />
        <signal name="Clk_CPU" />
        <signal name="LED(7:0)" />
        <signal name="Buzzer" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="clk_100mhz" />
        <signal name="IO_clk" />
        <signal name="XLXN_145" />
        <signal name="XLXN_153" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_161(31:0)" />
        <signal name="XLXN_164(0:0)" />
        <signal name="inst(31:0)" />
        <signal name="PC(31:0)" />
        <signal name="PC(11:2)" />
        <signal name="XLXN_168(9:0)" />
        <signal name="XLXN_170(31:0)" />
        <signal name="Div(6)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="XLXN_177(31:0)" />
        <signal name="XLXN_178" />
        <signal name="XLXN_179" />
        <signal name="XLXN_180" />
        <signal name="XLXN_182" />
        <signal name="CPU2IO(31:0)" />
        <signal name="XLXN_186(1:0)" />
        <signal name="XLXN_188" />
        <signal name="XLXN_189" />
        <signal name="XLXN_192(15:0)" />
        <signal name="N0,N0,PC(31:2)" />
        <signal name="Counter_out(31:0)" />
        <signal name="test_reg_result(31:0)" />
        <signal name="SW_OK(12:8)" />
        <signal name="SW_OK(15)" />
        <signal name="readn" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="led_clrn" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="readn" />
        <blockdef name="SAnti_jitter">
            <timestamp>2016-2-27T10:4:28</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2017-4-9T15:21:40</timestamp>
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
            <line x2="32" y1="16" y2="16" x1="0" />
            <line x2="32" y1="48" y2="48" style="linewidth:W" x1="4" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="256" x="32" y="-140" height="216" />
            <line x2="288" y1="48" y2="48" x1="320" />
            <line x2="288" y1="16" y2="16" x1="324" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2016-2-27T10:4:30</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2016-2-27T10:4:25</timestamp>
            <line x2="0" y1="-528" y2="-528" style="linewidth:W" x1="32" />
            <line x2="0" y1="-464" y2="-464" style="linewidth:W" x1="32" />
            <line x2="0" y1="-672" y2="-672" x1="32" />
            <line x2="0" y1="-624" y2="-624" x1="32" />
            <line x2="0" y1="-576" y2="-576" x1="32" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="32" />
            <line x2="0" y1="-368" y2="-368" style="linewidth:W" x1="32" />
            <line x2="0" y1="-320" y2="-320" style="linewidth:W" x1="32" />
            <line x2="0" y1="-272" y2="-272" style="linewidth:W" x1="32" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="352" y1="-576" y2="-576" style="linewidth:W" x1="384" />
            <line x2="352" y1="-528" y2="-528" style="linewidth:W" x1="384" />
            <line x2="352" y1="-624" y2="-624" style="linewidth:W" x1="384" />
            <rect style="fillcolor:rgb(179,164,255);fillstyle:Solid" width="320" x="32" y="-696" height="696" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2016-2-27T10:4:29</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2016-2-27T10:4:27</timestamp>
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-256" height="256" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-96" y2="-96" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="448" />
            <line x2="480" y1="-128" y2="-128" style="linewidth:W" x1="448" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2016-2-27T10:4:29</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(192,173,254);fillstyle:Solid" width="288" x="32" y="-240" height="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="352" y1="-192" y2="-192" style="linewidth:W" x1="320" />
            <line x2="352" y1="-64" y2="-64" style="linewidth:W" x1="320" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="32" y1="-144" y2="-144" x1="0" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="Counter_x">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="32" y1="-800" y2="-800" x1="64" />
            <line x2="32" y1="-736" y2="-736" x1="64" />
            <line x2="32" y1="-544" y2="-544" x1="64" />
            <line x2="32" y1="-480" y2="-480" style="linewidth:W" x1="64" />
            <line x2="32" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="32" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <line x2="528" y1="-192" y2="-192" style="linewidth:W" x1="496" />
            <line x2="496" y1="-160" y2="-160" x1="528" />
            <line x2="496" y1="-128" y2="-128" x1="528" />
            <line x2="496" y1="-96" y2="-96" x1="528" />
            <line x2="528" y1="-64" y2="-64" x1="496" />
            <line x2="32" y1="-672" y2="-672" style="linewidth:W" x1="64" />
            <line x2="32" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="528" y1="-368" y2="-368" style="linewidth:W" x1="496" />
            <line x2="528" y1="-768" y2="-768" style="linewidth:W" x1="496" />
            <line x2="528" y1="-720" y2="-720" x1="496" />
            <line x2="528" y1="-672" y2="-672" x1="496" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="ROM_D">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="84" height="244" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="416" y1="208" y2="208" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-2-24T16:0:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="416" y1="144" y2="144" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="SCPU_v1">
            <timestamp>2017-4-9T15:56:34</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
            <rect width="64" x="496" y="-236" height="24" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <rect width="64" x="496" y="-172" height="24" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
            <rect style="linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="432" x="64" y="-320" height="320" />
        </blockdef>
        <block symbolname="SAnti_jitter" name="XLXI_1">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="clk_div" name="XLXI_2">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
            <blockpin signalname="SW_OK(15)" name="SW15" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="RDY" name="keyReady" />
        </block>
        <block symbolname="SSeg7_Dev" name="XLXI_4">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="Seg7_Dev" name="XLXI_33">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="Counter_x" name="XLXI_37">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(6)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_182" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_186(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_180" name="counter0_OUT" />
            <blockpin signalname="XLXN_179" name="counter1_OUT" />
            <blockpin signalname="XLXN_178" name="counter2_OUT" />
            <blockpin signalname="XLXN_177(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="MIO_BUS" name="XLXI_38">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_153" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="XLXN_170(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="XLXN_168(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="XLXN_164(0:0)" name="data_ram_we" />
            <blockpin signalname="XLXN_161(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="XLXN_177(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_178" name="counter2_out" />
            <blockpin signalname="XLXN_179" name="counter1_out" />
            <blockpin signalname="XLXN_180" name="counter0_out" />
            <blockpin signalname="XLXN_182" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="XLXN_192(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="XLXN_188" name="GPIOe0000000_we" />
            <blockpin signalname="XLXN_189" name="GPIOf0000000_we" />
        </block>
        <block symbolname="inv" name="XLXI_39">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="IO_clk" name="O" />
        </block>
        <block symbolname="Multi_8CH32" name="XLXI_40">
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="XLXN_188" name="EN" />
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="LES(63:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Data0(31:0)" />
            <blockpin signalname="N0,N0,PC(31:2)" name="data1(31:0)" />
            <blockpin signalname="inst(31:0)" name="data2(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="data4(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="data6(31:0)" />
            <blockpin signalname="test_reg_result(31:0)" name="data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="SPIO" name="XLXI_41">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_189" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin name="GPIOf0(13:0)" />
            <blockpin signalname="XLXN_192(15:0)" name="LED_out(15:0)" />
            <blockpin signalname="XLXN_186(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="PIO" name="XLXI_42">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_189" name="EN" />
            <blockpin signalname="CPU2IO(31:0)" name="PData_in(31:0)" />
            <blockpin name="GPIOf0(21:0)" />
            <blockpin signalname="LED(7:0)" name="LED_out(7:0)" />
            <blockpin name="counter_set(1:0)" />
        </block>
        <block symbolname="inv" name="XLXI_44">
            <blockpin signalname="clk_100mhz" name="I" />
            <blockpin signalname="XLXN_145" name="O" />
        </block>
        <block symbolname="ROM_D" name="XLXI_46">
            <blockpin signalname="PC(11:2)" name="a(9:0)" />
            <blockpin signalname="inst(31:0)" name="spo(31:0)" />
        </block>
        <block symbolname="RAM_B" name="XLXI_47">
            <blockpin signalname="XLXN_168(9:0)" name="addra(9:0)" />
            <blockpin signalname="XLXN_145" name="clka" />
            <blockpin signalname="XLXN_164(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_161(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_170(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="SCPU_v1" name="XLXI_48">
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="inst(31:0)" name="inst_in(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="SW_OK(12:8)" name="test_reg_index(4:0)" />
            <blockpin signalname="XLXN_153" name="MemW" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="test_reg_result(31:0)" name="test_reg_result(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="2416" y="1024" name="XLXI_1" orien="R0">
        </instance>
        <branch name="RSTN">
            <wire x2="2448" y1="800" y2="800" x1="1984" />
        </branch>
        <branch name="BTN_y(3:0)">
            <wire x2="2448" y1="864" y2="864" x1="1984" />
        </branch>
        <branch name="BTN_x(4:0)">
            <wire x2="2448" y1="912" y2="912" x1="1984" />
        </branch>
        <branch name="SW(15:0)">
            <wire x2="2448" y1="960" y2="960" x1="1984" />
        </branch>
        <branch name="CR">
            <wire x2="2864" y1="800" y2="800" x1="2816" />
            <wire x2="2864" y1="592" y2="800" x1="2864" />
            <wire x2="2960" y1="592" y2="592" x1="2864" />
        </branch>
        <branch name="RDY">
            <wire x2="2960" y1="1312" y2="1312" x1="2768" />
            <wire x2="2960" y1="864" y2="864" x1="2816" />
            <wire x2="2960" y1="864" y2="1312" x1="2960" />
            <wire x2="3040" y1="864" y2="864" x1="2960" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="928" type="branch" />
            <wire x2="2976" y1="928" y2="928" x1="2816" />
        </branch>
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2944" y="736" type="branch" />
            <wire x2="2912" y1="896" y2="896" x1="2816" />
            <wire x2="2912" y1="736" y2="896" x1="2912" />
            <wire x2="2944" y1="736" y2="736" x1="2912" />
            <wire x2="2960" y1="736" y2="736" x1="2944" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2784" y="1120" type="branch" />
            <wire x2="2256" y1="1488" y2="1488" x1="1200" />
            <wire x2="2352" y1="1488" y2="1488" x1="2256" />
            <wire x2="2256" y1="1488" y2="1696" x1="2256" />
            <wire x2="2320" y1="1696" y2="1696" x1="2256" />
            <wire x2="1200" y1="1488" y2="1936" x1="1200" />
            <wire x2="1280" y1="1936" y2="1936" x1="1200" />
            <wire x2="2352" y1="1120" y2="1216" x1="2352" />
            <wire x2="2352" y1="1216" y2="1424" x1="2352" />
            <wire x2="3680" y1="1424" y2="1424" x1="2352" />
            <wire x2="4224" y1="1424" y2="1424" x1="3680" />
            <wire x2="3680" y1="1424" y2="2384" x1="3680" />
            <wire x2="3952" y1="2384" y2="2384" x1="3680" />
            <wire x2="2352" y1="1424" y2="1488" x1="2352" />
            <wire x2="2448" y1="1216" y2="1216" x1="2352" />
            <wire x2="2784" y1="1120" y2="1120" x1="2352" />
            <wire x2="2832" y1="1120" y2="1120" x1="2784" />
            <wire x2="2832" y1="1008" y2="1008" x1="2816" />
            <wire x2="2832" y1="1008" y2="1120" x1="2832" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="816" type="branch" />
            <wire x2="4128" y1="816" y2="816" x1="4080" />
        </branch>
        <instance x="4128" y="1120" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3984" y="848" type="branch" />
            <wire x2="4128" y1="848" y2="848" x1="3984" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4000" y="960" type="branch" />
            <wire x2="4128" y1="960" y2="960" x1="4000" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4016" y="896" type="branch" />
            <wire x2="4128" y1="896" y2="896" x1="4016" />
        </branch>
        <branch name="seg_clk">
            <wire x2="4720" y1="832" y2="832" x1="4512" />
        </branch>
        <branch name="seg_sout">
            <wire x2="4720" y1="896" y2="896" x1="4512" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="4720" y1="960" y2="960" x1="4512" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="4720" y1="1024" y2="1024" x1="4512" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4368" y="1312" type="branch" />
            <wire x2="4128" y1="1008" y2="1008" x1="3920" />
            <wire x2="3920" y1="1008" y2="1312" x1="3920" />
            <wire x2="4368" y1="1312" y2="1312" x1="3920" />
            <wire x2="4688" y1="1312" y2="1312" x1="4368" />
            <wire x2="4688" y1="1312" y2="1424" x1="4688" />
            <wire x2="4992" y1="1312" y2="1312" x1="4688" />
            <wire x2="4992" y1="352" y2="352" x1="4528" />
            <wire x2="4992" y1="352" y2="1312" x1="4992" />
            <wire x2="4688" y1="1424" y2="1424" x1="4608" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4240" y="1264" type="branch" />
            <wire x2="4128" y1="1040" y2="1040" x1="3952" />
            <wire x2="3952" y1="1040" y2="1264" x1="3952" />
            <wire x2="4240" y1="1264" y2="1264" x1="3952" />
            <wire x2="4720" y1="1264" y2="1264" x1="4240" />
            <wire x2="4720" y1="1264" y2="1472" x1="4720" />
            <wire x2="5056" y1="1264" y2="1264" x1="4720" />
            <wire x2="5056" y1="320" y2="320" x1="4528" />
            <wire x2="5056" y1="320" y2="1264" x1="5056" />
            <wire x2="4720" y1="1472" y2="1472" x1="4608" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="4128" y="1216" type="branch" />
            <wire x2="4128" y1="1072" y2="1072" x1="4000" />
            <wire x2="4000" y1="1072" y2="1216" x1="4000" />
            <wire x2="4128" y1="1216" y2="1216" x1="4000" />
            <wire x2="4752" y1="1216" y2="1216" x1="4128" />
            <wire x2="4752" y1="1216" y2="1520" x1="4752" />
            <wire x2="5120" y1="1216" y2="1216" x1="4752" />
            <wire x2="5120" y1="288" y2="288" x1="4528" />
            <wire x2="5120" y1="288" y2="1216" x1="5120" />
            <wire x2="4752" y1="1520" y2="1520" x1="4608" />
        </branch>
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="1520" type="branch" />
            <wire x2="4224" y1="1520" y2="1520" x1="4064" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4144" y="1584" type="branch" />
            <wire x2="4224" y1="1584" y2="1584" x1="4144" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3904" y="2480" type="branch" />
            <wire x2="3952" y1="2480" y2="2480" x1="3904" />
        </branch>
        <branch name="led_clk">
            <wire x2="4624" y1="2432" y2="2432" x1="4384" />
        </branch>
        <branch name="led_sout">
            <wire x2="4624" y1="2464" y2="2464" x1="4384" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="4624" y1="2496" y2="2496" x1="4384" />
        </branch>
        <branch name="led_clrn">
            <wire x2="4624" y1="2528" y2="2528" x1="4384" />
        </branch>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1264" type="branch" />
            <wire x2="2224" y1="1264" y2="1264" x1="2208" />
            <wire x2="2448" y1="1264" y2="1264" x1="2224" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2832" y="1184" type="branch" />
            <wire x2="2832" y1="1184" y2="1184" x1="2768" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="4624" y1="2784" y2="2784" x1="4400" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1376" name="clk_100mhz" orien="R180" />
        <iomarker fontsize="28" x="1984" y="800" name="RSTN" orien="R180" />
        <iomarker fontsize="28" x="1984" y="864" name="BTN_y(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1984" y="912" name="BTN_x(4:0)" orien="R180" />
        <iomarker fontsize="28" x="1984" y="960" name="SW(15:0)" orien="R180" />
        <iomarker fontsize="28" x="2960" y="592" name="CR" orien="R0" />
        <iomarker fontsize="28" x="4720" y="832" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="4720" y="896" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="4720" y="960" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="4720" y="1024" name="seg_clrn" orien="R0" />
        <iomarker fontsize="28" x="4624" y="2432" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="4624" y="2464" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="4624" y="2496" name="LED_PEN" orien="R0" />
        <iomarker fontsize="28" x="4624" y="2528" name="led_clrn" orien="R0" />
        <iomarker fontsize="28" x="4624" y="2784" name="LED(7:0)" orien="R0" />
        <instance x="4528" y="256" name="XLXI_33" orien="R180">
        </instance>
        <instance x="2240" y="224" name="XLXI_10" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="368" type="branch" />
            <wire x2="2304" y1="368" y2="368" x1="2192" />
            <wire x2="2304" y1="224" y2="368" x1="2304" />
        </branch>
        <instance x="2560" y="400" name="XLXI_11" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="112" type="branch" />
            <wire x2="2624" y1="112" y2="112" x1="2512" />
            <wire x2="2624" y1="112" y2="272" x1="2624" />
        </branch>
        <instance x="2848" y="272" name="XLXI_16" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="240" type="branch" />
            <wire x2="2848" y1="240" y2="240" x1="2752" />
        </branch>
        <branch name="Buzzer">
            <wire x2="3104" y1="240" y2="240" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="240" name="Buzzer" orien="R0" />
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4608" y="400" type="branch" />
            <wire x2="4608" y1="400" y2="400" x1="4528" />
        </branch>
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4624" y="464" type="branch" />
            <wire x2="4624" y1="464" y2="464" x1="4528" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="4624" y="432" type="branch" />
            <wire x2="4624" y1="432" y2="432" x1="4528" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="4176" y1="448" y2="448" x1="3968" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="4176" y1="320" y2="320" x1="3984" />
        </branch>
        <iomarker fontsize="28" x="3984" y="320" name="AN(3:0)" orien="R180" />
        <iomarker fontsize="28" x="3968" y="448" name="SEGMENT(7:0)" orien="R180" />
        <branch name="clk_100mhz">
            <wire x2="880" y1="1456" y2="3184" x1="880" />
            <wire x2="960" y1="3184" y2="3184" x1="880" />
            <wire x2="2304" y1="1456" y2="1456" x1="880" />
            <wire x2="2304" y1="1456" y2="1632" x1="2304" />
            <wire x2="2320" y1="1632" y2="1632" x1="2304" />
            <wire x2="2304" y1="1376" y2="1376" x1="1936" />
            <wire x2="2304" y1="1376" y2="1456" x1="2304" />
            <wire x2="2304" y1="672" y2="832" x1="2304" />
            <wire x2="2448" y1="832" y2="832" x1="2304" />
            <wire x2="2304" y1="832" y2="1184" x1="2304" />
            <wire x2="2304" y1="1184" y2="1376" x1="2304" />
            <wire x2="2448" y1="1184" y2="1184" x1="2304" />
            <wire x2="3136" y1="672" y2="672" x1="2304" />
            <wire x2="4080" y1="672" y2="672" x1="3136" />
            <wire x2="4080" y1="672" y2="784" x1="4080" />
            <wire x2="4128" y1="784" y2="784" x1="4080" />
        </branch>
        <instance x="2320" y="3200" name="XLXI_37" orien="R0">
        </instance>
        <instance x="2288" y="2432" name="XLXI_38" orien="R0">
        </instance>
        <instance x="3024" y="1296" name="XLXI_39" orien="R0" />
        <instance x="4224" y="2048" name="XLXI_40" orien="R0">
        </instance>
        <instance x="3920" y="2560" name="XLXI_41" orien="R0">
        </instance>
        <instance x="3920" y="2912" name="XLXI_42" orien="R0">
        </instance>
        <branch name="IO_clk">
            <wire x2="3728" y1="2592" y2="2592" x1="2240" />
            <wire x2="3728" y1="2592" y2="2688" x1="3728" />
            <wire x2="3952" y1="2688" y2="2688" x1="3728" />
            <wire x2="2240" y1="2592" y2="2720" x1="2240" />
            <wire x2="2320" y1="2720" y2="2720" x1="2240" />
            <wire x2="3376" y1="1264" y2="1264" x1="3248" />
            <wire x2="3376" y1="1264" y2="1376" x1="3376" />
            <wire x2="3728" y1="1376" y2="1376" x1="3376" />
            <wire x2="4224" y1="1376" y2="1376" x1="3728" />
            <wire x2="3728" y1="1376" y2="2336" x1="3728" />
            <wire x2="3952" y1="2336" y2="2336" x1="3728" />
            <wire x2="3728" y1="2336" y2="2592" x1="3728" />
        </branch>
        <branch name="XLXN_145">
            <wire x2="1280" y1="3184" y2="3184" x1="1184" />
        </branch>
        <instance x="960" y="3216" name="XLXI_44" orien="R0" />
        <branch name="XLXN_153">
            <wire x2="2080" y1="1872" y2="1872" x1="1840" />
            <wire x2="2080" y1="1872" y2="1888" x1="2080" />
            <wire x2="2320" y1="1888" y2="1888" x1="2080" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1952" type="branch" />
            <wire x2="2080" y1="1936" y2="1936" x1="1840" />
            <wire x2="2080" y1="1936" y2="1952" x1="2080" />
            <wire x2="2240" y1="1952" y2="1952" x1="2080" />
            <wire x2="2320" y1="1952" y2="1952" x1="2240" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="2016" type="branch" />
            <wire x2="1280" y1="2064" y2="2064" x1="1216" />
            <wire x2="1216" y1="2064" y2="2192" x1="1216" />
            <wire x2="2032" y1="2192" y2="2192" x1="1216" />
            <wire x2="2080" y1="2016" y2="2016" x1="2032" />
            <wire x2="2240" y1="2016" y2="2016" x1="2080" />
            <wire x2="2320" y1="2016" y2="2016" x1="2240" />
            <wire x2="2032" y1="2016" y2="2192" x1="2032" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="2080" type="branch" />
            <wire x2="1952" y1="2000" y2="2000" x1="1840" />
            <wire x2="1952" y1="2000" y2="2080" x1="1952" />
            <wire x2="2080" y1="2080" y2="2080" x1="1952" />
            <wire x2="2224" y1="2080" y2="2080" x1="2080" />
            <wire x2="2320" y1="2080" y2="2080" x1="2224" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1760" type="branch" />
            <wire x2="2144" y1="1760" y2="1760" x1="2080" />
            <wire x2="2320" y1="1760" y2="1760" x1="2144" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="1808" type="branch" />
            <wire x2="2144" y1="1808" y2="1808" x1="2080" />
            <wire x2="2320" y1="1808" y2="1808" x1="2144" />
        </branch>
        <branch name="XLXN_161(31:0)">
            <wire x2="992" y1="2416" y2="3136" x1="992" />
            <wire x2="1280" y1="3136" y2="3136" x1="992" />
            <wire x2="1952" y1="2416" y2="2416" x1="992" />
            <wire x2="2320" y1="2224" y2="2224" x1="1952" />
            <wire x2="1952" y1="2224" y2="2416" x1="1952" />
        </branch>
        <branch name="XLXN_164(0:0)">
            <wire x2="1040" y1="2448" y2="3056" x1="1040" />
            <wire x2="1280" y1="3056" y2="3056" x1="1040" />
            <wire x2="1264" y1="2448" y2="2448" x1="1040" />
            <wire x2="2000" y1="2448" y2="2448" x1="1264" />
            <wire x2="2320" y1="2272" y2="2272" x1="2000" />
            <wire x2="2000" y1="2272" y2="2448" x1="2000" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="2272" type="branch" />
            <wire x2="1280" y1="2272" y2="2272" x1="1024" />
            <wire x2="1920" y1="2272" y2="2272" x1="1280" />
            <wire x2="1920" y1="2064" y2="2064" x1="1840" />
            <wire x2="1920" y1="2064" y2="2080" x1="1920" />
            <wire x2="1920" y1="2080" y2="2272" x1="1920" />
        </branch>
        <branch name="PC(11:2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="2720" type="branch" />
            <wire x2="1200" y1="2720" y2="2720" x1="1184" />
            <wire x2="1280" y1="2720" y2="2720" x1="1200" />
        </branch>
        <branch name="XLXN_168(9:0)">
            <wire x2="1088" y1="2480" y2="2992" x1="1088" />
            <wire x2="1280" y1="2992" y2="2992" x1="1088" />
            <wire x2="2064" y1="2480" y2="2480" x1="1088" />
            <wire x2="2320" y1="2320" y2="2320" x1="2064" />
            <wire x2="2064" y1="2320" y2="2480" x1="2064" />
        </branch>
        <branch name="XLXN_170(31:0)">
            <wire x2="1920" y1="3056" y2="3056" x1="1728" />
            <wire x2="1920" y1="2544" y2="3056" x1="1920" />
            <wire x2="2112" y1="2544" y2="2544" x1="1920" />
            <wire x2="2320" y1="2368" y2="2368" x1="2112" />
            <wire x2="2112" y1="2368" y2="2544" x1="2112" />
        </branch>
        <branch name="Div(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2848" type="branch" />
            <wire x2="2320" y1="2848" y2="2848" x1="2192" />
        </branch>
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2912" type="branch" />
            <wire x2="2320" y1="2912" y2="2912" x1="2192" />
        </branch>
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2976" type="branch" />
            <wire x2="2320" y1="2976" y2="2976" x1="2192" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="2784" type="branch" />
            <wire x2="2320" y1="2784" y2="2784" x1="2192" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <wire x2="4224" y1="1632" y2="1632" x1="4112" />
        </branch>
        <branch name="XLXN_177(31:0)">
            <wire x2="3232" y1="2240" y2="2240" x1="2816" />
            <wire x2="3232" y1="2240" y2="3152" x1="3232" />
            <wire x2="3232" y1="3152" y2="3152" x1="2832" />
        </branch>
        <branch name="XLXN_178">
            <wire x2="3200" y1="2272" y2="2272" x1="2816" />
            <wire x2="3200" y1="2272" y2="3008" x1="3200" />
            <wire x2="3200" y1="3008" y2="3008" x1="2832" />
        </branch>
        <branch name="XLXN_179">
            <wire x2="3168" y1="2304" y2="2304" x1="2816" />
            <wire x2="3168" y1="2304" y2="2864" x1="3168" />
            <wire x2="3168" y1="2864" y2="2864" x1="2832" />
        </branch>
        <branch name="XLXN_180">
            <wire x2="3136" y1="2336" y2="2336" x1="2816" />
            <wire x2="3136" y1="2336" y2="2512" x1="3136" />
            <wire x2="3136" y1="2512" y2="2720" x1="3136" />
            <wire x2="3136" y1="2720" y2="2720" x1="2832" />
        </branch>
        <branch name="XLXN_182">
            <wire x2="3088" y1="2560" y2="2560" x1="2288" />
            <wire x2="2288" y1="2560" y2="3040" x1="2288" />
            <wire x2="2320" y1="3040" y2="3040" x1="2288" />
            <wire x2="3088" y1="2368" y2="2368" x1="2816" />
            <wire x2="3088" y1="2368" y2="2560" x1="3088" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3520" y="1664" type="branch" />
            <wire x2="2320" y1="3104" y2="3104" x1="2192" />
            <wire x2="2192" y1="3104" y2="3328" x1="2192" />
            <wire x2="3632" y1="3328" y2="3328" x1="2192" />
            <wire x2="3520" y1="1664" y2="1664" x1="2816" />
            <wire x2="3632" y1="1664" y2="1664" x1="3520" />
            <wire x2="3632" y1="1664" y2="1680" x1="3632" />
            <wire x2="4224" y1="1680" y2="1680" x1="3632" />
            <wire x2="3632" y1="1680" y2="2528" x1="3632" />
            <wire x2="3632" y1="2528" y2="2880" x1="3632" />
            <wire x2="3952" y1="2880" y2="2880" x1="3632" />
            <wire x2="3632" y1="2880" y2="3328" x1="3632" />
            <wire x2="3952" y1="2528" y2="2528" x1="3632" />
        </branch>
        <branch name="XLXN_186(1:0)">
            <wire x2="2320" y1="3168" y2="3168" x1="2256" />
            <wire x2="2256" y1="3168" y2="3264" x1="2256" />
            <wire x2="3568" y1="3264" y2="3264" x1="2256" />
            <wire x2="3568" y1="2224" y2="3264" x1="3568" />
            <wire x2="4448" y1="2224" y2="2224" x1="3568" />
            <wire x2="4448" y1="2224" y2="2336" x1="4448" />
            <wire x2="4448" y1="2336" y2="2336" x1="4384" />
        </branch>
        <branch name="XLXN_188">
            <wire x2="2976" y1="1712" y2="1712" x1="2816" />
            <wire x2="4224" y1="1472" y2="1472" x1="2976" />
            <wire x2="2976" y1="1472" y2="1712" x1="2976" />
        </branch>
        <branch name="XLXN_189">
            <wire x2="3776" y1="1760" y2="1760" x1="2816" />
            <wire x2="3776" y1="1760" y2="2432" x1="3776" />
            <wire x2="3952" y1="2432" y2="2432" x1="3776" />
            <wire x2="3776" y1="2432" y2="2816" x1="3776" />
            <wire x2="3952" y1="2816" y2="2816" x1="3776" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3824" y="2752" type="branch" />
            <wire x2="3952" y1="2752" y2="2752" x1="3824" />
        </branch>
        <branch name="XLXN_192(15:0)">
            <wire x2="3232" y1="2064" y2="2064" x1="2816" />
            <wire x2="3232" y1="2064" y2="2160" x1="3232" />
            <wire x2="4528" y1="2160" y2="2160" x1="3232" />
            <wire x2="4528" y1="2160" y2="2368" x1="4528" />
            <wire x2="4528" y1="2368" y2="2368" x1="4384" />
        </branch>
        <branch name="N0,N0,PC(31:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="1728" type="branch" />
            <wire x2="4224" y1="1728" y2="1728" x1="4064" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="1776" type="branch" />
            <wire x2="4224" y1="1776" y2="1776" x1="4064" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="1824" type="branch" />
            <wire x2="4224" y1="1824" y2="1824" x1="4064" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4064" y="1872" type="branch" />
            <wire x2="4224" y1="1872" y2="1872" x1="4064" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="1920" type="branch" />
            <wire x2="4224" y1="1920" y2="1920" x1="4080" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4080" y="1968" type="branch" />
            <wire x2="4224" y1="1968" y2="1968" x1="4080" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1152" y="2000" type="branch" />
            <wire x2="1168" y1="2000" y2="2000" x1="1152" />
            <wire x2="1168" y1="2000" y2="2544" x1="1168" />
            <wire x2="1872" y1="2544" y2="2544" x1="1168" />
            <wire x2="1872" y1="2544" y2="2720" x1="1872" />
            <wire x2="1280" y1="2000" y2="2000" x1="1168" />
            <wire x2="1744" y1="2720" y2="2720" x1="1728" />
            <wire x2="1872" y1="2720" y2="2720" x1="1744" />
        </branch>
        <branch name="Clk_CPU">
            <wire x2="2864" y1="1520" y2="1520" x1="1232" />
            <wire x2="1232" y1="1520" y2="1872" x1="1232" />
            <wire x2="1280" y1="1872" y2="1872" x1="1232" />
            <wire x2="2864" y1="1264" y2="1264" x1="2768" />
            <wire x2="3024" y1="1264" y2="1264" x1="2864" />
            <wire x2="2864" y1="1264" y2="1520" x1="2864" />
        </branch>
        <branch name="test_reg_result(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1392" y="2352" type="branch" />
            <wire x2="1392" y1="2352" y2="2352" x1="1024" />
            <wire x2="1888" y1="2352" y2="2352" x1="1392" />
            <wire x2="1888" y1="2128" y2="2128" x1="1840" />
            <wire x2="1888" y1="2128" y2="2352" x1="1888" />
        </branch>
        <branch name="test_reg_result(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="4128" y="2016" type="branch" />
            <wire x2="4224" y1="2016" y2="2016" x1="4128" />
        </branch>
        <branch name="SW_OK(12:8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="2128" type="branch" />
            <wire x2="1280" y1="2128" y2="2128" x1="1104" />
        </branch>
        <branch name="SW_OK(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1312" type="branch" />
            <wire x2="2224" y1="1312" y2="1312" x1="2208" />
            <wire x2="2448" y1="1312" y2="1312" x1="2224" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2224" y="1344" type="branch" />
            <wire x2="2240" y1="1344" y2="1344" x1="2224" />
            <wire x2="2448" y1="1344" y2="1344" x1="2240" />
        </branch>
        <instance x="2448" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <branch name="readn">
            <wire x2="2400" y1="992" y2="992" x1="2256" />
            <wire x2="2448" y1="992" y2="992" x1="2400" />
            <wire x2="2400" y1="992" y2="1392" x1="2400" />
            <wire x2="2816" y1="1392" y2="1392" x1="2400" />
            <wire x2="2816" y1="1344" y2="1344" x1="2768" />
            <wire x2="2816" y1="1344" y2="1392" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="2256" y="992" name="readn" orien="R180" />
        <iomarker fontsize="28" x="3040" y="864" name="RDY" orien="R0" />
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2992" y="976" type="branch" />
            <wire x2="2832" y1="976" y2="976" x1="2816" />
            <wire x2="2992" y1="976" y2="976" x1="2832" />
        </branch>
        <instance x="1280" y="2512" name="XLXI_46" orien="R0">
        </instance>
        <instance x="1280" y="2912" name="XLXI_47" orien="R0">
        </instance>
        <instance x="1280" y="2160" name="XLXI_48" orien="R0">
        </instance>
    </sheet>
</drawing>