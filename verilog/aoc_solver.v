module aoc_solver_top (
    clocking$clear,
    write_enable,
    write_data$value,
    write_address,
    clocking$clock,
    start,
    done_,
    total_removed
);

    input clocking$clear;
    input write_enable;
    input write_data$value;
    input [6:0] write_address;
    input clocking$clock;
    input start;
    output done_;
    output [15:0] total_removed;

    wire [15:0] _24;
    wire [15:0] _146;
    wire [15:0] _147;
    wire [15:0] _148;
    wire [15:0] _27;
    reg [15:0] _149;
    wire [15:0] _1;
    reg [15:0] _25;
    wire [2:0] _22;
    wire [2:0] _224;
    wire [2:0] _162;
    wire [6:0] _220;
    wire _221;
    wire [2:0] _222;
    wire [6:0] _217;
    wire [6:0] _172;
    wire _158;
    wire _202;
    wire vdd;
    wire [3:0] _143;
    wire _138;
    wire _139;
    wire _140;
    wire [3:0] _141;
    wire _133;
    wire _134;
    wire [3:0] _135;
    reg _106;
    reg _108;
    reg _110;
    reg _112;
    reg _114;
    reg _116;
    reg _118;
    reg _120;
    reg _122;
    reg _124;
    reg _126;
    reg _128;
    wire _102;
    wire _103;
    wire _104;
    wire _129;
    wire [3:0] _130;
    wire _96;
    wire _97;
    wire [3:0] _98;
    reg _91;
    wire _89;
    wire _92;
    wire [3:0] _93;
    wire [6:0] _81;
    wire _82;
    wire _83;
    wire _84;
    wire _85;
    wire [3:0] _86;
    wire _76;
    wire _77;
    wire [3:0] _78;
    reg _70;
    reg _72;
    wire _66;
    wire [6:0] _170;
    wire [6:0] _166;
    wire [6:0] _167;
    wire [6:0] _161;
    wire [6:0] _155;
    wire [6:0] _157;
    wire [6:0] _151;
    reg [6:0] _163;
    wire [6:0] _3;
    reg [6:0] _64;
    wire _153;
    wire [6:0] _168;
    wire [6:0] _165;
    reg [6:0] _171;
    wire [6:0] _4;
    reg [6:0] _60;
    wire _62;
    wire _67;
    wire _68;
    wire _73;
    wire [3:0] _74;
    wire [3:0] _79;
    wire [3:0] _87;
    wire [3:0] _94;
    wire [3:0] _99;
    wire [3:0] _131;
    wire [3:0] _136;
    wire [3:0] _142;
    wire _144;
    wire _34;
    wire _33;
    wire _35;
    wire _6;
    reg [6:0] _175;
    reg [6:0] _177;
    reg [6:0] _179;
    reg [6:0] _181;
    reg [6:0] _183;
    reg [6:0] _185;
    reg [6:0] _187;
    reg [6:0] _189;
    reg [6:0] _191;
    reg [6:0] _193;
    reg [6:0] _195;
    wire _8;
    wire _10;
    wire [6:0] _12;
    wire _14;
    reg [0:0] _197[0:127];
    wire _198;
    wire _15;
    reg _36;
    reg _38;
    reg _40;
    reg _42;
    reg _44;
    reg _46;
    reg _48;
    reg _50;
    reg _52;
    reg _54;
    reg _56;
    wire [2:0] _29;
    wire _30;
    wire _57;
    wire _145;
    wire _201;
    wire gnd;
    wire _199;
    reg _203;
    wire _16;
    reg _159;
    wire [6:0] _214;
    wire [6:0] _211;
    wire [6:0] _208;
    wire _209;
    wire [6:0] _212;
    wire [6:0] _207;
    wire [6:0] _205;
    reg [6:0] _215;
    wire [6:0] _17;
    reg [6:0] _173;
    wire _218;
    wire [2:0] _219;
    wire [2:0] _32;
    wire _19;
    wire [2:0] _216;
    reg [2:0] _225;
    wire [2:0] _20;
    (* fsm_encoding="one_hot" *)
    reg [2:0] _23;
    wire [2:0] _223;
    wire _226;
    assign _24 = 16'b0000000000000000;
    assign _146 = 16'b0000000000000001;
    assign _147 = _25 + _146;
    assign _148 = _145 ? _147 : _25;
    assign _27 = _19 ? _24 : _25;
    always @* begin
        case (_23)
        3'b000:
            _149 <= _27;
        3'b010:
            _149 <= _148;
        default:
            _149 <= _25;
        endcase
    end
    assign _1 = _149;
    always @(posedge _14) begin
        if (_6)
            _25 <= _24;
        else
            _25 <= _1;
    end
    assign _22 = 3'b000;
    assign _224 = _159 ? _32 : _223;
    assign _162 = 3'b011;
    assign _220 = 7'b1100011;
    assign _221 = _195 == _220;
    assign _222 = _221 ? _162 : _23;
    assign _217 = 7'b0001010;
    assign _172 = 7'b0000000;
    assign _158 = 1'b0;
    assign _202 = _159 ? gnd : _159;
    assign vdd = 1'b1;
    assign _143 = 4'b0100;
    assign _138 = _102 | _82;
    assign _139 = ~ _138;
    assign _140 = _139 & _124;
    assign _141 = { _22,
                    _140 };
    assign _133 = ~ _102;
    assign _134 = _133 & _126;
    assign _135 = { _22,
                    _134 };
    always @(posedge _14) begin
        if (_6)
            _106 <= _158;
        else
            if (_35)
                _106 <= _54;
    end
    always @(posedge _14) begin
        if (_6)
            _108 <= _158;
        else
            if (_35)
                _108 <= _106;
    end
    always @(posedge _14) begin
        if (_6)
            _110 <= _158;
        else
            if (_35)
                _110 <= _108;
    end
    always @(posedge _14) begin
        if (_6)
            _112 <= _158;
        else
            if (_35)
                _112 <= _110;
    end
    always @(posedge _14) begin
        if (_6)
            _114 <= _158;
        else
            if (_35)
                _114 <= _112;
    end
    always @(posedge _14) begin
        if (_6)
            _116 <= _158;
        else
            if (_35)
                _116 <= _114;
    end
    always @(posedge _14) begin
        if (_6)
            _118 <= _158;
        else
            if (_35)
                _118 <= _116;
    end
    always @(posedge _14) begin
        if (_6)
            _120 <= _158;
        else
            if (_35)
                _120 <= _118;
    end
    always @(posedge _14) begin
        if (_6)
            _122 <= _158;
        else
            if (_35)
                _122 <= _120;
    end
    always @(posedge _14) begin
        if (_6)
            _124 <= _158;
        else
            if (_35)
                _124 <= _122;
    end
    always @(posedge _14) begin
        if (_6)
            _126 <= _158;
        else
            if (_35)
                _126 <= _124;
    end
    always @(posedge _14) begin
        if (_6)
            _128 <= _158;
        else
            if (_35)
                _128 <= _126;
    end
    assign _102 = _60 == _172;
    assign _103 = _102 | _66;
    assign _104 = ~ _103;
    assign _129 = _104 & _128;
    assign _130 = { _22,
                    _129 };
    assign _96 = ~ _82;
    assign _97 = _96 & _54;
    assign _98 = { _22,
                   _97 };
    always @(posedge _14) begin
        if (_6)
            _91 <= _158;
        else
            if (_35)
                _91 <= _56;
    end
    assign _89 = ~ _66;
    assign _92 = _89 & _91;
    assign _93 = { _22,
                   _92 };
    assign _81 = 7'b0001001;
    assign _82 = _64 == _81;
    assign _83 = _62 | _82;
    assign _84 = ~ _83;
    assign _85 = _84 & _15;
    assign _86 = { _22,
                   _85 };
    assign _76 = ~ _62;
    assign _77 = _76 & _70;
    assign _78 = { _22,
                   _77 };
    always @(posedge _14) begin
        if (_6)
            _70 <= _158;
        else
            if (_35)
                _70 <= _15;
    end
    always @(posedge _14) begin
        if (_6)
            _72 <= _158;
        else
            if (_35)
                _72 <= _70;
    end
    assign _66 = _64 == _172;
    assign _170 = _159 ? _172 : _60;
    assign _166 = 7'b0000001;
    assign _167 = _60 + _166;
    assign _161 = _159 ? _172 : _64;
    assign _155 = _64 + _166;
    assign _157 = _153 ? _172 : _155;
    assign _151 = _19 ? _172 : _64;
    always @* begin
        case (_23)
        3'b000:
            _163 <= _151;
        3'b010:
            _163 <= _157;
        3'b011:
            _163 <= _161;
        default:
            _163 <= _64;
        endcase
    end
    assign _3 = _163;
    always @(posedge _14) begin
        if (_6)
            _64 <= _172;
        else
            _64 <= _3;
    end
    assign _153 = _64 == _81;
    assign _168 = _153 ? _167 : _60;
    assign _165 = _19 ? _172 : _60;
    always @* begin
        case (_23)
        3'b000:
            _171 <= _165;
        3'b010:
            _171 <= _168;
        3'b011:
            _171 <= _170;
        default:
            _171 <= _60;
        endcase
    end
    assign _4 = _171;
    always @(posedge _14) begin
        if (_6)
            _60 <= _172;
        else
            _60 <= _4;
    end
    assign _62 = _60 == _81;
    assign _67 = _62 | _66;
    assign _68 = ~ _67;
    assign _73 = _68 & _72;
    assign _74 = { _22,
                   _73 };
    assign _79 = _74 + _78;
    assign _87 = _79 + _86;
    assign _94 = _87 + _93;
    assign _99 = _94 + _98;
    assign _131 = _99 + _130;
    assign _136 = _131 + _135;
    assign _142 = _136 + _141;
    assign _144 = _142 < _143;
    assign _34 = _29 == _23;
    assign _33 = _32 == _23;
    assign _35 = _33 | _34;
    assign _6 = clocking$clear;
    always @(posedge _14) begin
        if (_6)
            _175 <= _172;
        else
            _175 <= _173;
    end
    always @(posedge _14) begin
        if (_6)
            _177 <= _172;
        else
            _177 <= _175;
    end
    always @(posedge _14) begin
        if (_6)
            _179 <= _172;
        else
            _179 <= _177;
    end
    always @(posedge _14) begin
        if (_6)
            _181 <= _172;
        else
            _181 <= _179;
    end
    always @(posedge _14) begin
        if (_6)
            _183 <= _172;
        else
            _183 <= _181;
    end
    always @(posedge _14) begin
        if (_6)
            _185 <= _172;
        else
            _185 <= _183;
    end
    always @(posedge _14) begin
        if (_6)
            _187 <= _172;
        else
            _187 <= _185;
    end
    always @(posedge _14) begin
        if (_6)
            _189 <= _172;
        else
            _189 <= _187;
    end
    always @(posedge _14) begin
        if (_6)
            _191 <= _172;
        else
            _191 <= _189;
    end
    always @(posedge _14) begin
        if (_6)
            _193 <= _172;
        else
            _193 <= _191;
    end
    always @(posedge _14) begin
        if (_6)
            _195 <= _172;
        else
            _195 <= _193;
    end
    assign _8 = write_enable;
    assign _10 = write_data$value;
    assign _12 = write_address;
    assign _14 = clocking$clock;
    always @(posedge _14) begin
        if (_8)
            _197[_12] <= _10;
    end
    always @(posedge _14) begin
        if (_145)
            _197[_195] <= gnd;
    end
    assign _198 = _197[_173];
    assign _15 = _198;
    always @(posedge _14) begin
        if (_6)
            _36 <= _158;
        else
            if (_35)
                _36 <= _15;
    end
    always @(posedge _14) begin
        if (_6)
            _38 <= _158;
        else
            if (_35)
                _38 <= _36;
    end
    always @(posedge _14) begin
        if (_6)
            _40 <= _158;
        else
            if (_35)
                _40 <= _38;
    end
    always @(posedge _14) begin
        if (_6)
            _42 <= _158;
        else
            if (_35)
                _42 <= _40;
    end
    always @(posedge _14) begin
        if (_6)
            _44 <= _158;
        else
            if (_35)
                _44 <= _42;
    end
    always @(posedge _14) begin
        if (_6)
            _46 <= _158;
        else
            if (_35)
                _46 <= _44;
    end
    always @(posedge _14) begin
        if (_6)
            _48 <= _158;
        else
            if (_35)
                _48 <= _46;
    end
    always @(posedge _14) begin
        if (_6)
            _50 <= _158;
        else
            if (_35)
                _50 <= _48;
    end
    always @(posedge _14) begin
        if (_6)
            _52 <= _158;
        else
            if (_35)
                _52 <= _50;
    end
    always @(posedge _14) begin
        if (_6)
            _54 <= _158;
        else
            if (_35)
                _54 <= _52;
    end
    always @(posedge _14) begin
        if (_6)
            _56 <= _158;
        else
            if (_35)
                _56 <= _54;
    end
    assign _29 = 3'b010;
    assign _30 = _29 == _23;
    assign _57 = _30 & _56;
    assign _145 = _57 & _144;
    assign _201 = _145 ? vdd : _159;
    assign gnd = 1'b0;
    assign _199 = _19 ? gnd : _159;
    always @* begin
        case (_23)
        3'b000:
            _203 <= _199;
        3'b010:
            _203 <= _201;
        3'b011:
            _203 <= _202;
        default:
            _203 <= _159;
        endcase
    end
    assign _16 = _203;
    always @(posedge _14) begin
        if (_6)
            _159 <= _158;
        else
            _159 <= _16;
    end
    assign _214 = _159 ? _172 : _173;
    assign _211 = _173 + _166;
    assign _208 = 7'b1100100;
    assign _209 = _173 < _208;
    assign _212 = _209 ? _211 : _173;
    assign _207 = _173 + _166;
    assign _205 = _19 ? _172 : _173;
    always @* begin
        case (_23)
        3'b000:
            _215 <= _205;
        3'b001:
            _215 <= _207;
        3'b010:
            _215 <= _212;
        3'b011:
            _215 <= _214;
        default:
            _215 <= _173;
        endcase
    end
    assign _17 = _215;
    always @(posedge _14) begin
        if (_6)
            _173 <= _172;
        else
            _173 <= _17;
    end
    assign _218 = _173 == _217;
    assign _219 = _218 ? _29 : _23;
    assign _32 = 3'b001;
    assign _19 = start;
    assign _216 = _19 ? _32 : _23;
    always @* begin
        case (_23)
        3'b000:
            _225 <= _216;
        3'b001:
            _225 <= _219;
        3'b010:
            _225 <= _222;
        3'b011:
            _225 <= _224;
        default:
            _225 <= _23;
        endcase
    end
    assign _20 = _225;
    always @(posedge _14) begin
        if (_6)
            _23 <= _22;
        else
            _23 <= _20;
    end
    assign _223 = 3'b100;
    assign _226 = _223 == _23;
    assign done_ = _226;
    assign total_removed = _25;

endmodule

