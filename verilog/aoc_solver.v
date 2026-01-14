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

    wire [31:0] _312;
    wire _308;
    wire [14:0] _307;
    wire [15:0] _309;
    wire [15:0] _298;
    wire [15:0] _302;
    wire [15:0] _303;
    wire [15:0] _304;
    wire [15:0] _301;
    wire [2:0] _20;
    wire [2:0] _295;
    wire [2:0] _296;
    wire [2:0] _53;
    wire [6:0] _292;
    wire _293;
    wire [2:0] _294;
    wire [6:0] _289;
    wire [6:0] _31;
    wire _49;
    wire _278;
    wire vdd;
    wire [3:0] _227;
    wire _222;
    wire _223;
    wire _224;
    wire [3:0] _225;
    wire _217;
    wire _218;
    wire [3:0] _219;
    reg _190;
    reg _192;
    reg _194;
    reg _196;
    reg _198;
    reg _200;
    reg _202;
    reg _204;
    reg _206;
    reg _208;
    reg _210;
    reg _212;
    wire _186;
    wire _187;
    wire _188;
    wire _213;
    wire [3:0] _214;
    wire _180;
    wire _181;
    wire [3:0] _182;
    reg _175;
    wire _173;
    wire _176;
    wire [3:0] _177;
    wire [6:0] _165;
    wire _166;
    wire _167;
    wire _168;
    wire _169;
    wire [3:0] _170;
    wire _160;
    wire _161;
    wire [3:0] _162;
    reg _154;
    reg _156;
    reg [6:0] _124;
    reg [6:0] _126;
    reg [6:0] _128;
    reg [6:0] _130;
    reg [6:0] _132;
    reg [6:0] _134;
    reg [6:0] _136;
    reg [6:0] _138;
    reg [6:0] _140;
    reg [6:0] _142;
    reg [6:0] _144;
    reg [6:0] _146;
    reg [6:0] _148;
    wire _150;
    wire [6:0] _64;
    wire [6:0] _57;
    wire [6:0] _58;
    wire [6:0] _52;
    wire [6:0] _42;
    wire [6:0] _44;
    wire [6:0] _45;
    wire [6:0] _47;
    reg [6:0] _54;
    wire [6:0] _1;
    reg [6:0] _38;
    wire _40;
    wire [6:0] _59;
    wire [6:0] _60;
    wire [6:0] _62;
    reg [6:0] _65;
    wire [6:0] _2;
    reg [6:0] _56;
    reg [6:0] _96;
    reg [6:0] _98;
    reg [6:0] _100;
    reg [6:0] _102;
    reg [6:0] _104;
    reg [6:0] _106;
    reg [6:0] _108;
    reg [6:0] _110;
    reg [6:0] _112;
    reg [6:0] _114;
    reg [6:0] _116;
    reg [6:0] _118;
    reg [6:0] _120;
    wire _122;
    wire _151;
    wire _152;
    wire _157;
    wire [3:0] _158;
    wire [3:0] _163;
    wire [3:0] _171;
    wire [3:0] _178;
    wire [3:0] _183;
    wire [3:0] _215;
    wire [3:0] _220;
    wire [3:0] _226;
    wire _228;
    wire _70;
    wire _69;
    wire _71;
    wire [3:0] _265;
    wire _266;
    wire _267;
    wire _268;
    wire _262;
    wire _264;
    reg [6:0] _236;
    reg [6:0] _238;
    reg [6:0] _240;
    reg [6:0] _242;
    reg [6:0] _244;
    reg [6:0] _246;
    reg [6:0] _248;
    reg [6:0] _250;
    reg [6:0] _252;
    reg [6:0] _254;
    reg [6:0] _256;
    reg [6:0] _258;
    reg [6:0] _260;
    wire [3:0] _231;
    wire _232;
    wire _233;
    wire _4;
    wire [6:0] _66;
    wire [6:0] _5;
    reg [6:0] _234;
    wire [6:0] _261;
    wire _7;
    reg [0:0] _269[0:127];
    wire _270;
    reg _272;
    reg _274;
    wire _8;
    reg _72;
    reg _74;
    reg _76;
    reg _78;
    reg _80;
    reg _82;
    reg _84;
    reg _86;
    reg _88;
    reg _90;
    reg _92;
    wire _67;
    wire _93;
    wire _229;
    wire _277;
    wire gnd;
    wire _275;
    reg _279;
    wire _9;
    reg _50;
    wire [6:0] _286;
    wire [6:0] _281;
    wire [6:0] _33;
    wire _34;
    wire [2:0] _29;
    wire _30;
    wire _35;
    wire _28;
    wire _36;
    wire [6:0] _282;
    wire [6:0] _284;
    reg [6:0] _287;
    wire [6:0] _10;
    reg [6:0] _32;
    wire _290;
    wire [2:0] _291;
    wire [2:0] _27;
    wire [31:0] _12;
    wire _25;
    wire [3:0] _22;
    wire _23;
    wire _14;
    wire _24;
    wire _26;
    wire [2:0] _288;
    reg [2:0] _297;
    wire [2:0] _15;
    (* fsm_encoding="one_hot" *)
    reg [2:0] _21;
    reg [15:0] _305;
    wire [15:0] _16;
    reg [15:0] _299;
    wire [31:0] _310;
    wire [3:0] _18;
    reg [31:0] _313;
    assign _312 = 32'b00000000000000000000000000000000;
    assign _308 = _295 == _21;
    assign _307 = 15'b000000000000000;
    assign _309 = { _307,
                    _308 };
    assign _298 = 16'b0000000000000000;
    assign _302 = 16'b0000000000000001;
    assign _303 = _299 + _302;
    assign _304 = _229 ? _303 : _299;
    assign _301 = _26 ? _298 : _299;
    assign _20 = 3'b000;
    assign _295 = 3'b100;
    assign _296 = _50 ? _27 : _295;
    assign _53 = 3'b011;
    assign _292 = 7'b1100011;
    assign _293 = _260 == _292;
    assign _294 = _293 ? _53 : _21;
    assign _289 = 7'b0001100;
    assign _31 = 7'b0000000;
    assign _49 = 1'b0;
    assign _278 = _50 ? gnd : _50;
    assign vdd = 1'b1;
    assign _227 = 4'b0100;
    assign _222 = _186 | _166;
    assign _223 = ~ _222;
    assign _224 = _223 & _208;
    assign _225 = { _20,
                    _224 };
    assign _217 = ~ _186;
    assign _218 = _217 & _210;
    assign _219 = { _20,
                    _218 };
    always @(posedge _7) begin
        if (_4)
            _190 <= _49;
        else
            if (_71)
                _190 <= _90;
    end
    always @(posedge _7) begin
        if (_4)
            _192 <= _49;
        else
            if (_71)
                _192 <= _190;
    end
    always @(posedge _7) begin
        if (_4)
            _194 <= _49;
        else
            if (_71)
                _194 <= _192;
    end
    always @(posedge _7) begin
        if (_4)
            _196 <= _49;
        else
            if (_71)
                _196 <= _194;
    end
    always @(posedge _7) begin
        if (_4)
            _198 <= _49;
        else
            if (_71)
                _198 <= _196;
    end
    always @(posedge _7) begin
        if (_4)
            _200 <= _49;
        else
            if (_71)
                _200 <= _198;
    end
    always @(posedge _7) begin
        if (_4)
            _202 <= _49;
        else
            if (_71)
                _202 <= _200;
    end
    always @(posedge _7) begin
        if (_4)
            _204 <= _49;
        else
            if (_71)
                _204 <= _202;
    end
    always @(posedge _7) begin
        if (_4)
            _206 <= _49;
        else
            if (_71)
                _206 <= _204;
    end
    always @(posedge _7) begin
        if (_4)
            _208 <= _49;
        else
            if (_71)
                _208 <= _206;
    end
    always @(posedge _7) begin
        if (_4)
            _210 <= _49;
        else
            if (_71)
                _210 <= _208;
    end
    always @(posedge _7) begin
        if (_4)
            _212 <= _49;
        else
            if (_71)
                _212 <= _210;
    end
    assign _186 = _120 == _31;
    assign _187 = _186 | _150;
    assign _188 = ~ _187;
    assign _213 = _188 & _212;
    assign _214 = { _20,
                    _213 };
    assign _180 = ~ _166;
    assign _181 = _180 & _90;
    assign _182 = { _20,
                    _181 };
    always @(posedge _7) begin
        if (_4)
            _175 <= _49;
        else
            if (_71)
                _175 <= _92;
    end
    assign _173 = ~ _150;
    assign _176 = _173 & _175;
    assign _177 = { _20,
                    _176 };
    assign _165 = 7'b0001001;
    assign _166 = _148 == _165;
    assign _167 = _122 | _166;
    assign _168 = ~ _167;
    assign _169 = _168 & _8;
    assign _170 = { _20,
                    _169 };
    assign _160 = ~ _122;
    assign _161 = _160 & _154;
    assign _162 = { _20,
                    _161 };
    always @(posedge _7) begin
        if (_4)
            _154 <= _49;
        else
            if (_71)
                _154 <= _8;
    end
    always @(posedge _7) begin
        if (_4)
            _156 <= _49;
        else
            if (_71)
                _156 <= _154;
    end
    always @(posedge _7) begin
        if (_4)
            _124 <= _31;
        else
            _124 <= _38;
    end
    always @(posedge _7) begin
        if (_4)
            _126 <= _31;
        else
            _126 <= _124;
    end
    always @(posedge _7) begin
        if (_4)
            _128 <= _31;
        else
            _128 <= _126;
    end
    always @(posedge _7) begin
        if (_4)
            _130 <= _31;
        else
            _130 <= _128;
    end
    always @(posedge _7) begin
        if (_4)
            _132 <= _31;
        else
            _132 <= _130;
    end
    always @(posedge _7) begin
        if (_4)
            _134 <= _31;
        else
            _134 <= _132;
    end
    always @(posedge _7) begin
        if (_4)
            _136 <= _31;
        else
            _136 <= _134;
    end
    always @(posedge _7) begin
        if (_4)
            _138 <= _31;
        else
            _138 <= _136;
    end
    always @(posedge _7) begin
        if (_4)
            _140 <= _31;
        else
            _140 <= _138;
    end
    always @(posedge _7) begin
        if (_4)
            _142 <= _31;
        else
            _142 <= _140;
    end
    always @(posedge _7) begin
        if (_4)
            _144 <= _31;
        else
            _144 <= _142;
    end
    always @(posedge _7) begin
        if (_4)
            _146 <= _31;
        else
            _146 <= _144;
    end
    always @(posedge _7) begin
        if (_4)
            _148 <= _31;
        else
            _148 <= _146;
    end
    assign _150 = _148 == _31;
    assign _64 = _50 ? _31 : _60;
    assign _57 = 7'b0000001;
    assign _58 = _56 + _57;
    assign _52 = _50 ? _31 : _45;
    assign _42 = _38 + _57;
    assign _44 = _40 ? _31 : _42;
    assign _45 = _36 ? _44 : _38;
    assign _47 = _26 ? _31 : _45;
    always @* begin
        case (_21)
        3'b000:
            _54 <= _47;
        3'b011:
            _54 <= _52;
        default:
            _54 <= _45;
        endcase
    end
    assign _1 = _54;
    always @(posedge _7) begin
        if (_4)
            _38 <= _31;
        else
            _38 <= _1;
    end
    assign _40 = _38 == _165;
    assign _59 = _40 ? _58 : _56;
    assign _60 = _36 ? _59 : _56;
    assign _62 = _26 ? _31 : _60;
    always @* begin
        case (_21)
        3'b000:
            _65 <= _62;
        3'b011:
            _65 <= _64;
        default:
            _65 <= _60;
        endcase
    end
    assign _2 = _65;
    always @(posedge _7) begin
        if (_4)
            _56 <= _31;
        else
            _56 <= _2;
    end
    always @(posedge _7) begin
        if (_4)
            _96 <= _31;
        else
            _96 <= _56;
    end
    always @(posedge _7) begin
        if (_4)
            _98 <= _31;
        else
            _98 <= _96;
    end
    always @(posedge _7) begin
        if (_4)
            _100 <= _31;
        else
            _100 <= _98;
    end
    always @(posedge _7) begin
        if (_4)
            _102 <= _31;
        else
            _102 <= _100;
    end
    always @(posedge _7) begin
        if (_4)
            _104 <= _31;
        else
            _104 <= _102;
    end
    always @(posedge _7) begin
        if (_4)
            _106 <= _31;
        else
            _106 <= _104;
    end
    always @(posedge _7) begin
        if (_4)
            _108 <= _31;
        else
            _108 <= _106;
    end
    always @(posedge _7) begin
        if (_4)
            _110 <= _31;
        else
            _110 <= _108;
    end
    always @(posedge _7) begin
        if (_4)
            _112 <= _31;
        else
            _112 <= _110;
    end
    always @(posedge _7) begin
        if (_4)
            _114 <= _31;
        else
            _114 <= _112;
    end
    always @(posedge _7) begin
        if (_4)
            _116 <= _31;
        else
            _116 <= _114;
    end
    always @(posedge _7) begin
        if (_4)
            _118 <= _31;
        else
            _118 <= _116;
    end
    always @(posedge _7) begin
        if (_4)
            _120 <= _31;
        else
            _120 <= _118;
    end
    assign _122 = _120 == _165;
    assign _151 = _122 | _150;
    assign _152 = ~ _151;
    assign _157 = _152 & _156;
    assign _158 = { _20,
                    _157 };
    assign _163 = _158 + _162;
    assign _171 = _163 + _170;
    assign _178 = _171 + _177;
    assign _183 = _178 + _182;
    assign _215 = _183 + _214;
    assign _220 = _215 + _219;
    assign _226 = _220 + _225;
    assign _228 = _226 < _227;
    assign _70 = _29 == _21;
    assign _69 = _27 == _21;
    assign _71 = _69 | _70;
    assign _265 = 4'b0011;
    assign _266 = _18 == _265;
    assign _267 = _14 & _266;
    assign _268 = _267 | _229;
    assign _262 = _12[0:0];
    assign _264 = _229 ? gnd : _262;
    always @(posedge _7) begin
        if (_4)
            _236 <= _31;
        else
            _236 <= _32;
    end
    always @(posedge _7) begin
        if (_4)
            _238 <= _31;
        else
            _238 <= _236;
    end
    always @(posedge _7) begin
        if (_4)
            _240 <= _31;
        else
            _240 <= _238;
    end
    always @(posedge _7) begin
        if (_4)
            _242 <= _31;
        else
            _242 <= _240;
    end
    always @(posedge _7) begin
        if (_4)
            _244 <= _31;
        else
            _244 <= _242;
    end
    always @(posedge _7) begin
        if (_4)
            _246 <= _31;
        else
            _246 <= _244;
    end
    always @(posedge _7) begin
        if (_4)
            _248 <= _31;
        else
            _248 <= _246;
    end
    always @(posedge _7) begin
        if (_4)
            _250 <= _31;
        else
            _250 <= _248;
    end
    always @(posedge _7) begin
        if (_4)
            _252 <= _31;
        else
            _252 <= _250;
    end
    always @(posedge _7) begin
        if (_4)
            _254 <= _31;
        else
            _254 <= _252;
    end
    always @(posedge _7) begin
        if (_4)
            _256 <= _31;
        else
            _256 <= _254;
    end
    always @(posedge _7) begin
        if (_4)
            _258 <= _31;
        else
            _258 <= _256;
    end
    always @(posedge _7) begin
        if (_4)
            _260 <= _31;
        else
            _260 <= _258;
    end
    assign _231 = 4'b0010;
    assign _232 = _18 == _231;
    assign _233 = _14 & _232;
    assign _4 = clear;
    assign _66 = _12[6:0];
    assign _5 = _66;
    always @(posedge _7) begin
        if (_4)
            _234 <= _31;
        else
            if (_233)
                _234 <= _5;
    end
    assign _261 = _229 ? _260 : _234;
    assign _7 = clock;
    always @(posedge _7) begin
        if (_268)
            _269[_261] <= _264;
    end
    assign _270 = _269[_32];
    always @(posedge _7) begin
        if (_4)
            _272 <= _49;
        else
            _272 <= _270;
    end
    always @(posedge _7) begin
        if (_4)
            _274 <= _49;
        else
            _274 <= _272;
    end
    assign _8 = _274;
    always @(posedge _7) begin
        if (_4)
            _72 <= _49;
        else
            if (_71)
                _72 <= _8;
    end
    always @(posedge _7) begin
        if (_4)
            _74 <= _49;
        else
            if (_71)
                _74 <= _72;
    end
    always @(posedge _7) begin
        if (_4)
            _76 <= _49;
        else
            if (_71)
                _76 <= _74;
    end
    always @(posedge _7) begin
        if (_4)
            _78 <= _49;
        else
            if (_71)
                _78 <= _76;
    end
    always @(posedge _7) begin
        if (_4)
            _80 <= _49;
        else
            if (_71)
                _80 <= _78;
    end
    always @(posedge _7) begin
        if (_4)
            _82 <= _49;
        else
            if (_71)
                _82 <= _80;
    end
    always @(posedge _7) begin
        if (_4)
            _84 <= _49;
        else
            if (_71)
                _84 <= _82;
    end
    always @(posedge _7) begin
        if (_4)
            _86 <= _49;
        else
            if (_71)
                _86 <= _84;
    end
    always @(posedge _7) begin
        if (_4)
            _88 <= _49;
        else
            if (_71)
                _88 <= _86;
    end
    always @(posedge _7) begin
        if (_4)
            _90 <= _49;
        else
            if (_71)
                _90 <= _88;
    end
    always @(posedge _7) begin
        if (_4)
            _92 <= _49;
        else
            if (_71)
                _92 <= _90;
    end
    assign _67 = _29 == _21;
    assign _93 = _67 & _92;
    assign _229 = _93 & _228;
    assign _277 = _229 ? vdd : _50;
    assign gnd = 1'b0;
    assign _275 = _26 ? gnd : _50;
    always @* begin
        case (_21)
        3'b000:
            _279 <= _275;
        3'b010:
            _279 <= _277;
        3'b011:
            _279 <= _278;
        default:
            _279 <= _50;
        endcase
    end
    assign _9 = _279;
    always @(posedge _7) begin
        if (_4)
            _50 <= _49;
        else
            _50 <= _9;
    end
    assign _286 = _50 ? _31 : _282;
    assign _281 = _32 + _57;
    assign _33 = 7'b1100100;
    assign _34 = _32 < _33;
    assign _29 = 3'b010;
    assign _30 = _29 == _21;
    assign _35 = _30 & _34;
    assign _28 = _27 == _21;
    assign _36 = _28 | _35;
    assign _282 = _36 ? _281 : _32;
    assign _284 = _26 ? _31 : _282;
    always @* begin
        case (_21)
        3'b000:
            _287 <= _284;
        3'b011:
            _287 <= _286;
        default:
            _287 <= _282;
        endcase
    end
    assign _10 = _287;
    always @(posedge _7) begin
        if (_4)
            _32 <= _31;
        else
            _32 <= _10;
    end
    assign _290 = _32 == _289;
    assign _291 = _290 ? _29 : _21;
    assign _27 = 3'b001;
    assign _12 = reg_wdata;
    assign _25 = _12[0:0];
    assign _22 = 4'b0000;
    assign _23 = _18 == _22;
    assign _14 = reg_write_strobe;
    assign _24 = _14 & _23;
    assign _26 = _24 & _25;
    assign _288 = _26 ? _27 : _21;
    always @* begin
        case (_21)
        3'b000:
            _297 <= _288;
        3'b001:
            _297 <= _291;
        3'b010:
            _297 <= _294;
        3'b011:
            _297 <= _296;
        default:
            _297 <= _21;
        endcase
    end
    assign _15 = _297;
    always @(posedge _7) begin
        if (_4)
            _21 <= _20;
        else
            _21 <= _15;
    end
    always @* begin
        case (_21)
        3'b000:
            _305 <= _301;
        3'b010:
            _305 <= _304;
        default:
            _305 <= _299;
        endcase
    end
    assign _16 = _305;
    always @(posedge _7) begin
        if (_4)
            _299 <= _298;
        else
            _299 <= _16;
    end
    assign _310 = { _299,
                    _309 };
    assign _18 = reg_addr;
    always @* begin
        case (_18)
        0:
            _313 <= _312;
        1:
            _313 <= _310;
        2:
            _313 <= _312;
        default:
            _313 <= _312;
        endcase
    end
    assign reg_rdata = _313;

endmodule

