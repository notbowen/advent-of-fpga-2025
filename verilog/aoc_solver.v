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

    wire [31:0] _326;
    wire _322;
    wire [14:0] _321;
    wire [15:0] _323;
    wire [15:0] _312;
    wire [15:0] _316;
    wire [15:0] _317;
    wire [15:0] _318;
    wire [15:0] _315;
    wire [2:0] _20;
    wire [2:0] _309;
    wire [2:0] _310;
    wire [2:0] _53;
    wire [6:0] _306;
    wire _307;
    wire [2:0] _308;
    wire [6:0] _303;
    wire [6:0] _31;
    wire _49;
    wire _292;
    wire vdd;
    wire [3:0] _235;
    wire [3:0] _233;
    wire _228;
    wire _229;
    wire _230;
    wire [3:0] _231;
    wire _223;
    wire _224;
    wire [3:0] _225;
    reg _196;
    reg _198;
    reg _200;
    reg _202;
    reg _204;
    reg _206;
    reg _208;
    reg _210;
    reg _212;
    reg _214;
    reg _216;
    reg _218;
    wire _192;
    wire _193;
    wire _194;
    wire _219;
    wire [3:0] _220;
    wire _186;
    wire _187;
    wire [3:0] _188;
    reg _181;
    wire _179;
    wire _182;
    wire [3:0] _183;
    wire [6:0] _171;
    wire _172;
    wire _173;
    wire _174;
    wire _175;
    wire [3:0] _176;
    wire _166;
    wire _167;
    wire [3:0] _168;
    reg _160;
    reg _162;
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
    reg [6:0] _150;
    reg [6:0] _152;
    reg [6:0] _154;
    wire _156;
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
    reg [6:0] _122;
    reg [6:0] _124;
    wire _126;
    wire _157;
    wire _158;
    wire _163;
    wire [3:0] _164;
    wire [3:0] _169;
    wire [3:0] _177;
    wire [3:0] _184;
    wire [3:0] _189;
    wire [3:0] _221;
    wire [3:0] _226;
    wire [3:0] _232;
    reg [3:0] _234;
    wire _236;
    wire _70;
    wire _69;
    wire _71;
    wire [3:0] _277;
    wire _278;
    wire _279;
    wire _280;
    wire _274;
    wire _276;
    reg [6:0] _244;
    reg [6:0] _246;
    reg [6:0] _248;
    reg [6:0] _250;
    reg [6:0] _252;
    reg [6:0] _254;
    reg [6:0] _256;
    reg [6:0] _258;
    reg [6:0] _260;
    reg [6:0] _262;
    reg [6:0] _264;
    reg [6:0] _266;
    reg [6:0] _268;
    reg [6:0] _270;
    reg [6:0] _272;
    wire [3:0] _239;
    wire _240;
    wire _241;
    wire _4;
    wire [6:0] _66;
    wire [6:0] _5;
    reg [6:0] _242;
    wire [6:0] _273;
    wire _7;
    reg [0:0] _281[0:127];
    wire _282;
    reg _284;
    reg _286;
    reg _288;
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
    reg _94;
    wire _67;
    wire _95;
    wire _237;
    wire _291;
    wire gnd;
    wire _289;
    reg _293;
    wire _9;
    reg _50;
    wire [6:0] _300;
    wire [6:0] _295;
    wire [6:0] _33;
    wire _34;
    wire [2:0] _29;
    wire _30;
    wire _35;
    wire _28;
    wire _36;
    wire [6:0] _296;
    wire [6:0] _298;
    reg [6:0] _301;
    wire [6:0] _10;
    reg [6:0] _32;
    wire _304;
    wire [2:0] _305;
    wire [2:0] _27;
    wire [31:0] _12;
    wire _25;
    wire _23;
    wire _14;
    wire _24;
    wire _26;
    wire [2:0] _302;
    reg [2:0] _311;
    wire [2:0] _15;
    (* fsm_encoding="one_hot" *)
    reg [2:0] _21;
    reg [15:0] _319;
    wire [15:0] _16;
    reg [15:0] _313;
    wire [31:0] _324;
    wire [3:0] _18;
    reg [31:0] _327;
    assign _326 = 32'b00000000000000000000000000000000;
    assign _322 = _309 == _21;
    assign _321 = 15'b000000000000000;
    assign _323 = { _321,
                    _322 };
    assign _312 = 16'b0000000000000000;
    assign _316 = 16'b0000000000000001;
    assign _317 = _313 + _316;
    assign _318 = _237 ? _317 : _313;
    assign _315 = _26 ? _312 : _313;
    assign _20 = 3'b000;
    assign _309 = 3'b100;
    assign _310 = _50 ? _27 : _309;
    assign _53 = 3'b011;
    assign _306 = 7'b1100011;
    assign _307 = _272 == _306;
    assign _308 = _307 ? _53 : _21;
    assign _303 = 7'b0001110;
    assign _31 = 7'b0000000;
    assign _49 = 1'b0;
    assign _292 = _50 ? gnd : _50;
    assign vdd = 1'b1;
    assign _235 = 4'b0100;
    assign _233 = 4'b0000;
    assign _228 = _192 | _172;
    assign _229 = ~ _228;
    assign _230 = _229 & _214;
    assign _231 = { _20,
                    _230 };
    assign _223 = ~ _192;
    assign _224 = _223 & _216;
    assign _225 = { _20,
                    _224 };
    always @(posedge _7) begin
        if (_4)
            _196 <= _49;
        else
            if (_71)
                _196 <= _90;
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
    always @(posedge _7) begin
        if (_4)
            _214 <= _49;
        else
            if (_71)
                _214 <= _212;
    end
    always @(posedge _7) begin
        if (_4)
            _216 <= _49;
        else
            if (_71)
                _216 <= _214;
    end
    always @(posedge _7) begin
        if (_4)
            _218 <= _49;
        else
            if (_71)
                _218 <= _216;
    end
    assign _192 = _124 == _31;
    assign _193 = _192 | _156;
    assign _194 = ~ _193;
    assign _219 = _194 & _218;
    assign _220 = { _20,
                    _219 };
    assign _186 = ~ _172;
    assign _187 = _186 & _90;
    assign _188 = { _20,
                    _187 };
    always @(posedge _7) begin
        if (_4)
            _181 <= _49;
        else
            if (_71)
                _181 <= _92;
    end
    assign _179 = ~ _156;
    assign _182 = _179 & _181;
    assign _183 = { _20,
                    _182 };
    assign _171 = 7'b0001001;
    assign _172 = _154 == _171;
    assign _173 = _126 | _172;
    assign _174 = ~ _173;
    assign _175 = _174 & _8;
    assign _176 = { _20,
                    _175 };
    assign _166 = ~ _126;
    assign _167 = _166 & _160;
    assign _168 = { _20,
                    _167 };
    always @(posedge _7) begin
        if (_4)
            _160 <= _49;
        else
            if (_71)
                _160 <= _8;
    end
    always @(posedge _7) begin
        if (_4)
            _162 <= _49;
        else
            if (_71)
                _162 <= _160;
    end
    always @(posedge _7) begin
        if (_4)
            _128 <= _31;
        else
            _128 <= _38;
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
    always @(posedge _7) begin
        if (_4)
            _150 <= _31;
        else
            _150 <= _148;
    end
    always @(posedge _7) begin
        if (_4)
            _152 <= _31;
        else
            _152 <= _150;
    end
    always @(posedge _7) begin
        if (_4)
            _154 <= _31;
        else
            _154 <= _152;
    end
    assign _156 = _154 == _31;
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
    assign _40 = _38 == _171;
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
            _98 <= _31;
        else
            _98 <= _56;
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
    always @(posedge _7) begin
        if (_4)
            _122 <= _31;
        else
            _122 <= _120;
    end
    always @(posedge _7) begin
        if (_4)
            _124 <= _31;
        else
            _124 <= _122;
    end
    assign _126 = _124 == _171;
    assign _157 = _126 | _156;
    assign _158 = ~ _157;
    assign _163 = _158 & _162;
    assign _164 = { _20,
                    _163 };
    assign _169 = _164 + _168;
    assign _177 = _169 + _176;
    assign _184 = _177 + _183;
    assign _189 = _184 + _188;
    assign _221 = _189 + _220;
    assign _226 = _221 + _225;
    assign _232 = _226 + _231;
    always @(posedge _7) begin
        if (_4)
            _234 <= _233;
        else
            if (_71)
                _234 <= _232;
    end
    assign _236 = _234 < _235;
    assign _70 = _29 == _21;
    assign _69 = _27 == _21;
    assign _71 = _69 | _70;
    assign _277 = 4'b0011;
    assign _278 = _18 == _277;
    assign _279 = _14 & _278;
    assign _280 = _279 | _237;
    assign _274 = _12[0:0];
    assign _276 = _237 ? gnd : _274;
    always @(posedge _7) begin
        if (_4)
            _244 <= _31;
        else
            _244 <= _32;
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
    always @(posedge _7) begin
        if (_4)
            _262 <= _31;
        else
            _262 <= _260;
    end
    always @(posedge _7) begin
        if (_4)
            _264 <= _31;
        else
            _264 <= _262;
    end
    always @(posedge _7) begin
        if (_4)
            _266 <= _31;
        else
            _266 <= _264;
    end
    always @(posedge _7) begin
        if (_4)
            _268 <= _31;
        else
            _268 <= _266;
    end
    always @(posedge _7) begin
        if (_4)
            _270 <= _31;
        else
            _270 <= _268;
    end
    always @(posedge _7) begin
        if (_4)
            _272 <= _31;
        else
            _272 <= _270;
    end
    assign _239 = 4'b0010;
    assign _240 = _18 == _239;
    assign _241 = _14 & _240;
    assign _4 = clear;
    assign _66 = _12[6:0];
    assign _5 = _66;
    always @(posedge _7) begin
        if (_4)
            _242 <= _31;
        else
            if (_241)
                _242 <= _5;
    end
    assign _273 = _237 ? _272 : _242;
    assign _7 = clock;
    always @(posedge _7) begin
        if (_280)
            _281[_273] <= _276;
    end
    assign _282 = _281[_32];
    always @(posedge _7) begin
        if (_4)
            _284 <= _49;
        else
            _284 <= _282;
    end
    always @(posedge _7) begin
        if (_4)
            _286 <= _49;
        else
            _286 <= _284;
    end
    always @(posedge _7) begin
        if (_4)
            _288 <= _49;
        else
            _288 <= _286;
    end
    assign _8 = _288;
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
    always @(posedge _7) begin
        if (_4)
            _94 <= _49;
        else
            if (_71)
                _94 <= _92;
    end
    assign _67 = _29 == _21;
    assign _95 = _67 & _94;
    assign _237 = _95 & _236;
    assign _291 = _237 ? vdd : _50;
    assign gnd = 1'b0;
    assign _289 = _26 ? gnd : _50;
    always @* begin
        case (_21)
        3'b000:
            _293 <= _289;
        3'b010:
            _293 <= _291;
        3'b011:
            _293 <= _292;
        default:
            _293 <= _50;
        endcase
    end
    assign _9 = _293;
    always @(posedge _7) begin
        if (_4)
            _50 <= _49;
        else
            _50 <= _9;
    end
    assign _300 = _50 ? _31 : _296;
    assign _295 = _32 + _57;
    assign _33 = 7'b1100100;
    assign _34 = _32 < _33;
    assign _29 = 3'b010;
    assign _30 = _29 == _21;
    assign _35 = _30 & _34;
    assign _28 = _27 == _21;
    assign _36 = _28 | _35;
    assign _296 = _36 ? _295 : _32;
    assign _298 = _26 ? _31 : _296;
    always @* begin
        case (_21)
        3'b000:
            _301 <= _298;
        3'b011:
            _301 <= _300;
        default:
            _301 <= _296;
        endcase
    end
    assign _10 = _301;
    always @(posedge _7) begin
        if (_4)
            _32 <= _31;
        else
            _32 <= _10;
    end
    assign _304 = _32 == _303;
    assign _305 = _304 ? _29 : _21;
    assign _27 = 3'b001;
    assign _12 = reg_wdata;
    assign _25 = _12[0:0];
    assign _23 = _18 == _233;
    assign _14 = reg_write_strobe;
    assign _24 = _14 & _23;
    assign _26 = _24 & _25;
    assign _302 = _26 ? _27 : _21;
    always @* begin
        case (_21)
        3'b000:
            _311 <= _302;
        3'b001:
            _311 <= _305;
        3'b010:
            _311 <= _308;
        3'b011:
            _311 <= _310;
        default:
            _311 <= _21;
        endcase
    end
    assign _15 = _311;
    always @(posedge _7) begin
        if (_4)
            _21 <= _20;
        else
            _21 <= _15;
    end
    always @* begin
        case (_21)
        3'b000:
            _319 <= _315;
        3'b010:
            _319 <= _318;
        default:
            _319 <= _313;
        endcase
    end
    assign _16 = _319;
    always @(posedge _7) begin
        if (_4)
            _313 <= _312;
        else
            _313 <= _16;
    end
    assign _324 = { _313,
                    _323 };
    assign _18 = reg_addr;
    always @* begin
        case (_18)
        0:
            _327 <= _326;
        1:
            _327 <= _324;
        2:
            _327 <= _326;
        default:
            _327 <= _326;
        endcase
    end
    assign reg_rdata = _327;

endmodule

