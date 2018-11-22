`ifndef __RMW_LONG_LATENCY_PKG_VH__
`define __RMW_LONG_LATENCY_PKG_VH__

//========================================================================== //
// Copyright (c) 2018, Stephen Henry
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// * Redistributions of source code must retain the above copyright notice, this
//   list of conditions and the following disclaimer.
//
// * Redistributions in binary form must reproduce the above copyright notice,
//   this list of conditions and the following disclaimer in the documentation
//   and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
//========================================================================== //

package rmw_long_latency_pkg;

  //
  typedef logic [15:0] id_t;
  typedef logic [31:0] word_t;
  typedef logic [5:0]  tag_t;

  //
  typedef enum logic [1:0] {  OP_NOP   = 2'b00,
                              OP_ADDI  = 2'b01,
                              OP_SUBI  = 2'b10,
                              OP_MOVI  = 2'b11
                            } op_t;

  //
  typedef struct packed {
    id_t id;
    word_t imm;
    op_t op;
  } issue_t;

  localparam int N  = 64;

  //
  localparam int PTR_W  = $clog2(N);
  typedef logic [PTR_W-1:0] ptr_t;

endpackage // rmw_long_latency_pkg

`endif