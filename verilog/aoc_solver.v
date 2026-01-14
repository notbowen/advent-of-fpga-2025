module aoc_solver_top (
    clear,
    clock,
    reg_wdata,
    reg_write_strobe,
    reg_addr,
    reg_rdata
);

    input clear;
    input clock;
    input [31:0] reg_wdata;
    input reg_write_strobe;
    input [3:0] reg_addr;
    output [31:0] reg_rdata;

    wire [31:0] _245;
    wire _241;
    wire [14:0] _240;
    wire [15:0] _242;
    wire [15:0] _231;
    wire [15:0] _235;
    wire [15:0] _236;
    wire [15:0] _237;
    wire [15:0] _234;
    wire [2:0] _20;
    wire [2:0] _228;
    wire [2:0] _229;
    wire [2:0] _43;
    wire [6:0] _225;
    wire _226;
    wire [2:0] _227;
    wire [6:0] _222;
    wire [6:0] _56;
    wire _39;
    wire _207;
    wire vdd;
    wire [3:0] _199;
    wire _194;
    wire _195;
    wire _196;
    wire [3:0] _197;
    wire _189;
    wire _190;
    wire [3:0] _191;
    reg _162;
    reg _164;
    reg _166;
    reg _168;
    reg _170;
    reg _172;
    reg _174;
    reg _176;
    reg _178;
    reg _180;
    reg _182;
    reg _184;
    wire _158;
    wire _159;
    wire _160;
    wire _185;
    wire [3:0] _186;
    wire _152;
    wire _153;
    wire [3:0] _154;
    reg _147;
    wire _145;
    wire _148;
    wire [3:0] _149;
    wire [6:0] _137;
    wire _138;
    wire _139;
    wire _140;
    wire _141;
    wire [3:0] _142;
    wire _132;
    wire _133;
    wire [3:0] _134;
    reg _126;
    reg _128;
    wire _122;
    wire [6:0] _53;
    wire [6:0] _49;
    wire [6:0] _50;
    wire [6:0] _42;
    wire [6:0] _35;
    wire [6:0] _37;
    wire [6:0] _30;
    reg [6:0] _44;
    wire [6:0] _1;
    reg [6:0] _28;
    wire _33;
    wire [6:0] _51;
    wire [6:0] _48;
    reg [6:0] _54;
    wire [6:0] _2;
    reg [6:0] _46;
    wire _120;
    wire _123;
    wire _124;
    wire _129;
    wire [3:0] _130;
    wire [3:0] _135;
    wire [3:0] _143;
    wire [3:0] _150;
    wire [3:0] _155;
    wire [3:0] _187;
    wire [3:0] _192;
    wire [3:0] _198;
    wire _200;
    wire _94;
    wire _93;
    wire _95;
    reg [6:0] _68;
    reg [6:0] _70;
    reg [6:0] _72;
    reg [6:0] _74;
    reg [6:0] _76;
    reg [6:0] _78;
    reg [6:0] _80;
    reg [6:0] _82;
    reg [6:0] _84;
    reg [6:0] _86;
    reg [6:0] _88;
    wire [3:0] _64;
    wire _65;
    wire _66;
    wire _63;
    wire [3:0] _59;
    wire _60;
    wire _61;
    wire _4;
    wire [6:0] _55;
    wire [6:0] _5;
    reg [6:0] _62;
    wire _7;
    reg [0:0] _202[0:127];
    wire _203;
    wire _8;
    reg _96;
    reg _98;
    reg _100;
    reg _102;
    reg _104;
    reg _106;
    reg _108;
    reg _110;
    reg _112;
    reg _114;
    reg _116;
    wire [2:0] _38;
    wire _90;
    wire _117;
    wire _201;
    wire _206;
    wire gnd;
    wire _204;
    reg _208;
    wire _9;
    reg _40;
    wire [6:0] _219;
    wire [6:0] _216;
    wire [6:0] _213;
    wire _214;
    wire [6:0] _217;
    wire [6:0] _212;
    wire [6:0] _210;
    reg [6:0] _220;
    wire [6:0] _10;
    reg [6:0] _57;
    wire _223;
    wire [2:0] _224;
    wire [2:0] _92;
    wire [31:0] _12;
    wire _25;
    wire [3:0] _22;
    wire _23;
    wire _14;
    wire _24;
    wire _26;
    wire [2:0] _221;
    reg [2:0] _230;
    wire [2:0] _15;
    (* fsm_encoding="one_hot" *)
    reg [2:0] _21;
    reg [15:0] _238;
    wire [15:0] _16;
    reg [15:0] _232;
    wire [31:0] _243;
    wire [3:0] _18;
    reg [31:0] _246;
    assign _245 = 32'b00000000000000000000000000000000;
    assign _241 = _228 == _21;
    assign _240 = 15'b000000000000000;
    assign _242 = { _240,
                    _241 };
    assign _231 = 16'b0000000000000000;
    assign _235 = 16'b0000000000000001;
    assign _236 = _232 + _235;
    assign _237 = _201 ? _236 : _232;
    assign _234 = _26 ? _231 : _232;
    assign _20 = 3'b000;
    assign _228 = 3'b100;
    assign _229 = _40 ? _92 : _228;
    assign _43 = 3'b011;
    assign _225 = 7'b1100011;
    assign _226 = _88 == _225;
    assign _227 = _226 ? _43 : _21;
    assign _222 = 7'b0001010;
    assign _56 = 7'b0000000;
    assign _39 = 1'b0;
    assign _207 = _40 ? gnd : _40;
    assign vdd = 1'b1;
    assign _199 = 4'b0100;
    assign _194 = _158 | _138;
    assign _195 = ~ _194;
    assign _196 = _195 & _180;
    assign _197 = { _20,
                    _196 };
    assign _189 = ~ _158;
    assign _190 = _189 & _182;
    assign _191 = { _20,
                    _190 };
    always @(posedge _7) begin
        if (_4)
            _162 <= _39;
        else
            if (_95)
                _162 <= _114;
    end
    always @(posedge _7) begin
        if (_4)
            _164 <= _39;
        else
            if (_95)
                _164 <= _162;
    end
    always @(posedge _7) begin
        if (_4)
            _166 <= _39;
        else
            if (_95)
                _166 <= _164;
    end
    always @(posedge _7) begin
        if (_4)
            _168 <= _39;
        else
            if (_95)
                _168 <= _166;
    end
    always @(posedge _7) begin
        if (_4)
            _170 <= _39;
        else
            if (_95)
                _170 <= _168;
    end
    always @(posedge _7) begin
        if (_4)
            _172 <= _39;
        else
            if (_95)
                _172 <= _170;
    end
    always @(posedge _7) begin
        if (_4)
            _174 <= _39;
        else
            if (_95)
                _174 <= _172;
    end
    always @(posedge _7) begin
        if (_4)
            _176 <= _39;
        else
            if (_95)
                _176 <= _174;
    end
    always @(posedge _7) begin
        if (_4)
            _178 <= _39;
        else
            if (_95)
                _178 <= _176;
    end
    always @(posedge _7) begin
        if (_4)
            _180 <= _39;
        else
            if (_95)
                _180 <= _178;
    end
    always @(posedge _7) begin
        if (_4)
            _182 <= _39;
        else
            if (_95)
                _182 <= _180;
    end
    always @(posedge _7) begin
        if (_4)
            _184 <= _39;
        else
            if (_95)
                _184 <= _182;
    end
    assign _158 = _46 == _56;
    assign _159 = _158 | _122;
    assign _160 = ~ _159;
    assign _185 = _160 & _184;
    assign _186 = { _20,
                    _185 };
    assign _152 = ~ _138;
    assign _153 = _152 & _114;
    assign _154 = { _20,
                    _153 };
    always @(posedge _7) begin
        if (_4)
            _147 <= _39;
        else
            if (_95)
                _147 <= _116;
    end
    assign _145 = ~ _122;
    assign _148 = _145 & _147;
    assign _149 = { _20,
                    _148 };
    assign _137 = 7'b0001001;
    assign _138 = _28 == _137;
    assign _139 = _120 | _138;
    assign _140 = ~ _139;
    assign _141 = _140 & _8;
    assign _142 = { _20,
                    _141 };
    assign _132 = ~ _120;
    assign _133 = _132 & _126;
    assign _134 = { _20,
                    _133 };
    always @(posedge _7) begin
        if (_4)
            _126 <= _39;
        else
            if (_95)
                _126 <= _8;
    end
    always @(posedge _7) begin
        if (_4)
            _128 <= _39;
        else
            if (_95)
                _128 <= _126;
    end
    assign _122 = _28 == _56;
    assign _53 = _40 ? _56 : _46;
    assign _49 = 7'b0000001;
    assign _50 = _46 + _49;
    assign _42 = _40 ? _56 : _28;
    assign _35 = _28 + _49;
    assign _37 = _33 ? _56 : _35;
    assign _30 = _26 ? _56 : _28;
    always @* begin
        case (_21)
        3'b000:
            _44 <= _30;
        3'b010:
            _44 <= _37;
        3'b011:
            _44 <= _42;
        default:
            _44 <= _28;
        endcase
    end
    assign _1 = _44;
    always @(posedge _7) begin
        if (_4)
            _28 <= _56;
        else
            _28 <= _1;
    end
    assign _33 = _28 == _137;
    assign _51 = _33 ? _50 : _46;
    assign _48 = _26 ? _56 : _46;
    always @* begin
        case (_21)
        3'b000:
            _54 <= _48;
        3'b010:
            _54 <= _51;
        3'b011:
            _54 <= _53;
        default:
            _54 <= _46;
        endcase
    end
    assign _2 = _54;
    always @(posedge _7) begin
        if (_4)
            _46 <= _56;
        else
            _46 <= _2;
    end
    assign _120 = _46 == _137;
    assign _123 = _120 | _122;
    assign _124 = ~ _123;
    assign _129 = _124 & _128;
    assign _130 = { _20,
                    _129 };
    assign _135 = _130 + _134;
    assign _143 = _135 + _142;
    assign _150 = _143 + _149;
    assign _155 = _150 + _154;
    assign _187 = _155 + _186;
    assign _192 = _187 + _191;
    assign _198 = _192 + _197;
    assign _200 = _198 < _199;
    assign _94 = _38 == _21;
    assign _93 = _92 == _21;
    assign _95 = _93 | _94;
    always @(posedge _7) begin
        if (_4)
            _68 <= _56;
        else
            _68 <= _57;
    end
    always @(posedge _7) begin
        if (_4)
            _70 <= _56;
        else
            _70 <= _68;
    end
    always @(posedge _7) begin
        if (_4)
            _72 <= _56;
        else
            _72 <= _70;
    end
    always @(posedge _7) begin
        if (_4)
            _74 <= _56;
        else
            _74 <= _72;
    end
    always @(posedge _7) begin
        if (_4)
            _76 <= _56;
        else
            _76 <= _74;
    end
    always @(posedge _7) begin
        if (_4)
            _78 <= _56;
        else
            _78 <= _76;
    end
    always @(posedge _7) begin
        if (_4)
            _80 <= _56;
        else
            _80 <= _78;
    end
    always @(posedge _7) begin
        if (_4)
            _82 <= _56;
        else
            _82 <= _80;
    end
    always @(posedge _7) begin
        if (_4)
            _84 <= _56;
        else
            _84 <= _82;
    end
    always @(posedge _7) begin
        if (_4)
            _86 <= _56;
        else
            _86 <= _84;
    end
    always @(posedge _7) begin
        if (_4)
            _88 <= _56;
        else
            _88 <= _86;
    end
    assign _64 = 4'b0011;
    assign _65 = _18 == _64;
    assign _66 = _14 & _65;
    assign _63 = _12[0:0];
    assign _59 = 4'b0010;
    assign _60 = _18 == _59;
    assign _61 = _14 & _60;
    assign _4 = clear;
    assign _55 = _12[6:0];
    assign _5 = _55;
    always @(posedge _7) begin
        if (_4)
            _62 <= _56;
        else
            if (_61)
                _62 <= _5;
    end
    assign _7 = clock;
    always @(posedge _7) begin
        if (_66)
            _202[_62] <= _63;
    end
    always @(posedge _7) begin
        if (_201)
            _202[_88] <= gnd;
    end
    assign _203 = _202[_57];
    assign _8 = _203;
    always @(posedge _7) begin
        if (_4)
            _96 <= _39;
        else
            if (_95)
                _96 <= _8;
    end
    always @(posedge _7) begin
        if (_4)
            _98 <= _39;
        else
            if (_95)
                _98 <= _96;
    end
    always @(posedge _7) begin
        if (_4)
            _100 <= _39;
        else
            if (_95)
                _100 <= _98;
    end
    always @(posedge _7) begin
        if (_4)
            _102 <= _39;
        else
            if (_95)
                _102 <= _100;
    end
    always @(posedge _7) begin
        if (_4)
            _104 <= _39;
        else
            if (_95)
                _104 <= _102;
    end
    always @(posedge _7) begin
        if (_4)
            _106 <= _39;
        else
            if (_95)
                _106 <= _104;
    end
    always @(posedge _7) begin
        if (_4)
            _108 <= _39;
        else
            if (_95)
                _108 <= _106;
    end
    always @(posedge _7) begin
        if (_4)
            _110 <= _39;
        else
            if (_95)
                _110 <= _108;
    end
    always @(posedge _7) begin
        if (_4)
            _112 <= _39;
        else
            if (_95)
                _112 <= _110;
    end
    always @(posedge _7) begin
        if (_4)
            _114 <= _39;
        else
            if (_95)
                _114 <= _112;
    end
    always @(posedge _7) begin
        if (_4)
            _116 <= _39;
        else
            if (_95)
                _116 <= _114;
    end
    assign _38 = 3'b010;
    assign _90 = _38 == _21;
    assign _117 = _90 & _116;
    assign _201 = _117 & _200;
    assign _206 = _201 ? vdd : _40;
    assign gnd = 1'b0;
    assign _204 = _26 ? gnd : _40;
    always @* begin
        case (_21)
        3'b000:
            _208 <= _204;
        3'b010:
            _208 <= _206;
        3'b011:
            _208 <= _207;
        default:
            _208 <= _40;
        endcase
    end
    assign _9 = _208;
    always @(posedge _7) begin
        if (_4)
            _40 <= _39;
        else
            _40 <= _9;
    end
    assign _219 = _40 ? _56 : _57;
    assign _216 = _57 + _49;
    assign _213 = 7'b1100100;
    assign _214 = _57 < _213;
    assign _217 = _214 ? _216 : _57;
    assign _212 = _57 + _49;
    assign _210 = _26 ? _56 : _57;
    always @* begin
        case (_21)
        3'b000:
            _220 <= _210;
        3'b001:
            _220 <= _212;
        3'b010:
            _220 <= _217;
        3'b011:
            _220 <= _219;
        default:
            _220 <= _57;
        endcase
    end
    assign _10 = _220;
    always @(posedge _7) begin
        if (_4)
            _57 <= _56;
        else
            _57 <= _10;
    end
    assign _223 = _57 == _222;
    assign _224 = _223 ? _38 : _21;
    assign _92 = 3'b001;
    assign _12 = reg_wdata;
    assign _25 = _12[0:0];
    assign _22 = 4'b0000;
    assign _23 = _18 == _22;
    assign _14 = reg_write_strobe;
    assign _24 = _14 & _23;
    assign _26 = _24 & _25;
    assign _221 = _26 ? _92 : _21;
    always @* begin
        case (_21)
        3'b000:
            _230 <= _221;
        3'b001:
            _230 <= _224;
        3'b010:
            _230 <= _227;
        3'b011:
            _230 <= _229;
        default:
            _230 <= _21;
        endcase
    end
    assign _15 = _230;
    always @(posedge _7) begin
        if (_4)
            _21 <= _20;
        else
            _21 <= _15;
    end
    always @* begin
        case (_21)
        3'b000:
            _238 <= _234;
        3'b010:
            _238 <= _237;
        default:
            _238 <= _232;
        endcase
    end
    assign _16 = _238;
    always @(posedge _7) begin
        if (_4)
            _232 <= _231;
        else
            _232 <= _16;
    end
    assign _243 = { _232,
                    _242 };
    assign _18 = reg_addr;
    always @* begin
        case (_18)
        0:
            _246 <= _245;
        1:
            _246 <= _243;
        2:
            _246 <= _245;
        default:
            _246 <= _245;
        endcase
    end
    assign reg_rdata = _246;

endmodule

