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

    wire [31:0] _248;
    wire _244;
    wire [14:0] _243;
    wire [15:0] _245;
    wire [15:0] _234;
    wire [15:0] _238;
    wire [15:0] _239;
    wire [15:0] _240;
    wire [15:0] _237;
    wire [2:0] _20;
    wire [2:0] _231;
    wire [2:0] _232;
    wire [2:0] _43;
    wire [6:0] _228;
    wire _229;
    wire [2:0] _230;
    wire [6:0] _225;
    wire [6:0] _56;
    wire _39;
    wire _210;
    wire vdd;
    wire [3:0] _167;
    wire _162;
    wire _163;
    wire _164;
    wire [3:0] _165;
    wire _157;
    wire _158;
    wire [3:0] _159;
    reg _130;
    reg _132;
    reg _134;
    reg _136;
    reg _138;
    reg _140;
    reg _142;
    reg _144;
    reg _146;
    reg _148;
    reg _150;
    reg _152;
    wire _126;
    wire _127;
    wire _128;
    wire _153;
    wire [3:0] _154;
    wire _120;
    wire _121;
    wire [3:0] _122;
    reg _115;
    wire _113;
    wire _116;
    wire [3:0] _117;
    wire [6:0] _105;
    wire _106;
    wire _107;
    wire _108;
    wire _109;
    wire [3:0] _110;
    wire _100;
    wire _101;
    wire [3:0] _102;
    reg _94;
    reg _96;
    wire _90;
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
    wire _88;
    wire _91;
    wire _92;
    wire _97;
    wire [3:0] _98;
    wire [3:0] _103;
    wire [3:0] _111;
    wire [3:0] _118;
    wire [3:0] _123;
    wire [3:0] _155;
    wire [3:0] _160;
    wire [3:0] _166;
    wire _168;
    wire _62;
    wire _61;
    wire _63;
    wire [3:0] _201;
    wire _202;
    wire _203;
    wire _204;
    wire _198;
    wire _200;
    reg [6:0] _176;
    reg [6:0] _178;
    reg [6:0] _180;
    reg [6:0] _182;
    reg [6:0] _184;
    reg [6:0] _186;
    reg [6:0] _188;
    reg [6:0] _190;
    reg [6:0] _192;
    reg [6:0] _194;
    reg [6:0] _196;
    wire [3:0] _171;
    wire _172;
    wire _173;
    wire _4;
    wire [6:0] _55;
    wire [6:0] _5;
    reg [6:0] _174;
    wire [6:0] _197;
    wire _7;
    reg [0:0] _205[0:127];
    wire _206;
    wire _8;
    reg _64;
    reg _66;
    reg _68;
    reg _70;
    reg _72;
    reg _74;
    reg _76;
    reg _78;
    reg _80;
    reg _82;
    reg _84;
    wire [2:0] _38;
    wire _58;
    wire _85;
    wire _169;
    wire _209;
    wire gnd;
    wire _207;
    reg _211;
    wire _9;
    reg _40;
    wire [6:0] _222;
    wire [6:0] _219;
    wire [6:0] _216;
    wire _217;
    wire [6:0] _220;
    wire [6:0] _215;
    wire [6:0] _213;
    reg [6:0] _223;
    wire [6:0] _10;
    reg [6:0] _57;
    wire _226;
    wire [2:0] _227;
    wire [2:0] _60;
    wire [31:0] _12;
    wire _25;
    wire [3:0] _22;
    wire _23;
    wire _14;
    wire _24;
    wire _26;
    wire [2:0] _224;
    reg [2:0] _233;
    wire [2:0] _15;
    (* fsm_encoding="one_hot" *)
    reg [2:0] _21;
    reg [15:0] _241;
    wire [15:0] _16;
    reg [15:0] _235;
    wire [31:0] _246;
    wire [3:0] _18;
    reg [31:0] _249;
    assign _248 = 32'b00000000000000000000000000000000;
    assign _244 = _231 == _21;
    assign _243 = 15'b000000000000000;
    assign _245 = { _243,
                    _244 };
    assign _234 = 16'b0000000000000000;
    assign _238 = 16'b0000000000000001;
    assign _239 = _235 + _238;
    assign _240 = _169 ? _239 : _235;
    assign _237 = _26 ? _234 : _235;
    assign _20 = 3'b000;
    assign _231 = 3'b100;
    assign _232 = _40 ? _60 : _231;
    assign _43 = 3'b011;
    assign _228 = 7'b1100011;
    assign _229 = _196 == _228;
    assign _230 = _229 ? _43 : _21;
    assign _225 = 7'b0001010;
    assign _56 = 7'b0000000;
    assign _39 = 1'b0;
    assign _210 = _40 ? gnd : _40;
    assign vdd = 1'b1;
    assign _167 = 4'b0100;
    assign _162 = _126 | _106;
    assign _163 = ~ _162;
    assign _164 = _163 & _148;
    assign _165 = { _20,
                    _164 };
    assign _157 = ~ _126;
    assign _158 = _157 & _150;
    assign _159 = { _20,
                    _158 };
    always @(posedge _7) begin
        if (_4)
            _130 <= _39;
        else
            if (_63)
                _130 <= _82;
    end
    always @(posedge _7) begin
        if (_4)
            _132 <= _39;
        else
            if (_63)
                _132 <= _130;
    end
    always @(posedge _7) begin
        if (_4)
            _134 <= _39;
        else
            if (_63)
                _134 <= _132;
    end
    always @(posedge _7) begin
        if (_4)
            _136 <= _39;
        else
            if (_63)
                _136 <= _134;
    end
    always @(posedge _7) begin
        if (_4)
            _138 <= _39;
        else
            if (_63)
                _138 <= _136;
    end
    always @(posedge _7) begin
        if (_4)
            _140 <= _39;
        else
            if (_63)
                _140 <= _138;
    end
    always @(posedge _7) begin
        if (_4)
            _142 <= _39;
        else
            if (_63)
                _142 <= _140;
    end
    always @(posedge _7) begin
        if (_4)
            _144 <= _39;
        else
            if (_63)
                _144 <= _142;
    end
    always @(posedge _7) begin
        if (_4)
            _146 <= _39;
        else
            if (_63)
                _146 <= _144;
    end
    always @(posedge _7) begin
        if (_4)
            _148 <= _39;
        else
            if (_63)
                _148 <= _146;
    end
    always @(posedge _7) begin
        if (_4)
            _150 <= _39;
        else
            if (_63)
                _150 <= _148;
    end
    always @(posedge _7) begin
        if (_4)
            _152 <= _39;
        else
            if (_63)
                _152 <= _150;
    end
    assign _126 = _46 == _56;
    assign _127 = _126 | _90;
    assign _128 = ~ _127;
    assign _153 = _128 & _152;
    assign _154 = { _20,
                    _153 };
    assign _120 = ~ _106;
    assign _121 = _120 & _82;
    assign _122 = { _20,
                    _121 };
    always @(posedge _7) begin
        if (_4)
            _115 <= _39;
        else
            if (_63)
                _115 <= _84;
    end
    assign _113 = ~ _90;
    assign _116 = _113 & _115;
    assign _117 = { _20,
                    _116 };
    assign _105 = 7'b0001001;
    assign _106 = _28 == _105;
    assign _107 = _88 | _106;
    assign _108 = ~ _107;
    assign _109 = _108 & _8;
    assign _110 = { _20,
                    _109 };
    assign _100 = ~ _88;
    assign _101 = _100 & _94;
    assign _102 = { _20,
                    _101 };
    always @(posedge _7) begin
        if (_4)
            _94 <= _39;
        else
            if (_63)
                _94 <= _8;
    end
    always @(posedge _7) begin
        if (_4)
            _96 <= _39;
        else
            if (_63)
                _96 <= _94;
    end
    assign _90 = _28 == _56;
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
    assign _33 = _28 == _105;
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
    assign _88 = _46 == _105;
    assign _91 = _88 | _90;
    assign _92 = ~ _91;
    assign _97 = _92 & _96;
    assign _98 = { _20,
                   _97 };
    assign _103 = _98 + _102;
    assign _111 = _103 + _110;
    assign _118 = _111 + _117;
    assign _123 = _118 + _122;
    assign _155 = _123 + _154;
    assign _160 = _155 + _159;
    assign _166 = _160 + _165;
    assign _168 = _166 < _167;
    assign _62 = _38 == _21;
    assign _61 = _60 == _21;
    assign _63 = _61 | _62;
    assign _201 = 4'b0011;
    assign _202 = _18 == _201;
    assign _203 = _14 & _202;
    assign _204 = _203 | _169;
    assign _198 = _12[0:0];
    assign _200 = _169 ? gnd : _198;
    always @(posedge _7) begin
        if (_4)
            _176 <= _56;
        else
            _176 <= _57;
    end
    always @(posedge _7) begin
        if (_4)
            _178 <= _56;
        else
            _178 <= _176;
    end
    always @(posedge _7) begin
        if (_4)
            _180 <= _56;
        else
            _180 <= _178;
    end
    always @(posedge _7) begin
        if (_4)
            _182 <= _56;
        else
            _182 <= _180;
    end
    always @(posedge _7) begin
        if (_4)
            _184 <= _56;
        else
            _184 <= _182;
    end
    always @(posedge _7) begin
        if (_4)
            _186 <= _56;
        else
            _186 <= _184;
    end
    always @(posedge _7) begin
        if (_4)
            _188 <= _56;
        else
            _188 <= _186;
    end
    always @(posedge _7) begin
        if (_4)
            _190 <= _56;
        else
            _190 <= _188;
    end
    always @(posedge _7) begin
        if (_4)
            _192 <= _56;
        else
            _192 <= _190;
    end
    always @(posedge _7) begin
        if (_4)
            _194 <= _56;
        else
            _194 <= _192;
    end
    always @(posedge _7) begin
        if (_4)
            _196 <= _56;
        else
            _196 <= _194;
    end
    assign _171 = 4'b0010;
    assign _172 = _18 == _171;
    assign _173 = _14 & _172;
    assign _4 = clear;
    assign _55 = _12[6:0];
    assign _5 = _55;
    always @(posedge _7) begin
        if (_4)
            _174 <= _56;
        else
            if (_173)
                _174 <= _5;
    end
    assign _197 = _169 ? _196 : _174;
    assign _7 = clock;
    always @(posedge _7) begin
        if (_204)
            _205[_197] <= _200;
    end
    assign _206 = _205[_57];
    assign _8 = _206;
    always @(posedge _7) begin
        if (_4)
            _64 <= _39;
        else
            if (_63)
                _64 <= _8;
    end
    always @(posedge _7) begin
        if (_4)
            _66 <= _39;
        else
            if (_63)
                _66 <= _64;
    end
    always @(posedge _7) begin
        if (_4)
            _68 <= _39;
        else
            if (_63)
                _68 <= _66;
    end
    always @(posedge _7) begin
        if (_4)
            _70 <= _39;
        else
            if (_63)
                _70 <= _68;
    end
    always @(posedge _7) begin
        if (_4)
            _72 <= _39;
        else
            if (_63)
                _72 <= _70;
    end
    always @(posedge _7) begin
        if (_4)
            _74 <= _39;
        else
            if (_63)
                _74 <= _72;
    end
    always @(posedge _7) begin
        if (_4)
            _76 <= _39;
        else
            if (_63)
                _76 <= _74;
    end
    always @(posedge _7) begin
        if (_4)
            _78 <= _39;
        else
            if (_63)
                _78 <= _76;
    end
    always @(posedge _7) begin
        if (_4)
            _80 <= _39;
        else
            if (_63)
                _80 <= _78;
    end
    always @(posedge _7) begin
        if (_4)
            _82 <= _39;
        else
            if (_63)
                _82 <= _80;
    end
    always @(posedge _7) begin
        if (_4)
            _84 <= _39;
        else
            if (_63)
                _84 <= _82;
    end
    assign _38 = 3'b010;
    assign _58 = _38 == _21;
    assign _85 = _58 & _84;
    assign _169 = _85 & _168;
    assign _209 = _169 ? vdd : _40;
    assign gnd = 1'b0;
    assign _207 = _26 ? gnd : _40;
    always @* begin
        case (_21)
        3'b000:
            _211 <= _207;
        3'b010:
            _211 <= _209;
        3'b011:
            _211 <= _210;
        default:
            _211 <= _40;
        endcase
    end
    assign _9 = _211;
    always @(posedge _7) begin
        if (_4)
            _40 <= _39;
        else
            _40 <= _9;
    end
    assign _222 = _40 ? _56 : _57;
    assign _219 = _57 + _49;
    assign _216 = 7'b1100100;
    assign _217 = _57 < _216;
    assign _220 = _217 ? _219 : _57;
    assign _215 = _57 + _49;
    assign _213 = _26 ? _56 : _57;
    always @* begin
        case (_21)
        3'b000:
            _223 <= _213;
        3'b001:
            _223 <= _215;
        3'b010:
            _223 <= _220;
        3'b011:
            _223 <= _222;
        default:
            _223 <= _57;
        endcase
    end
    assign _10 = _223;
    always @(posedge _7) begin
        if (_4)
            _57 <= _56;
        else
            _57 <= _10;
    end
    assign _226 = _57 == _225;
    assign _227 = _226 ? _38 : _21;
    assign _60 = 3'b001;
    assign _12 = reg_wdata;
    assign _25 = _12[0:0];
    assign _22 = 4'b0000;
    assign _23 = _18 == _22;
    assign _14 = reg_write_strobe;
    assign _24 = _14 & _23;
    assign _26 = _24 & _25;
    assign _224 = _26 ? _60 : _21;
    always @* begin
        case (_21)
        3'b000:
            _233 <= _224;
        3'b001:
            _233 <= _227;
        3'b010:
            _233 <= _230;
        3'b011:
            _233 <= _232;
        default:
            _233 <= _21;
        endcase
    end
    assign _15 = _233;
    always @(posedge _7) begin
        if (_4)
            _21 <= _20;
        else
            _21 <= _15;
    end
    always @* begin
        case (_21)
        3'b000:
            _241 <= _237;
        3'b010:
            _241 <= _240;
        default:
            _241 <= _235;
        endcase
    end
    assign _16 = _241;
    always @(posedge _7) begin
        if (_4)
            _235 <= _234;
        else
            _235 <= _16;
    end
    assign _246 = { _235,
                    _245 };
    assign _18 = reg_addr;
    always @* begin
        case (_18)
        0:
            _249 <= _248;
        1:
            _249 <= _246;
        2:
            _249 <= _248;
        default:
            _249 <= _248;
        endcase
    end
    assign reg_rdata = _249;

endmodule

