`ifndef RV_CONFIG
`define RV_CONFIG

// Select architecture
`define SINGLE_CYCLE
// `define MULTI_CYCLE
// `define PIPELINE

// Select ISA
`define RV32I

// Select ISA extensions
`define M_MODULE    // multiplication and division
// `define F_MODULE    // floating point operations

// Enable debugging signals
`define DEBUG

//////////////////////////////////////////
//              Memory config           //
//////////////////////////////////////////

// Program counter initial value
`define INITIAL_PC      32'h00400000

// Instruction memory
`define TEXT_BEGIN      `INITIAL_PC
`define TEXT_BITS       16
`define TEXT_WIDTH      2**`TEXT_BITS
`define TEXT_END        `TEXT_BEGIN + `TEXT_WIDTH - 1

// Data memory
`define DATA_BEGIN      32'h8000_0000
`define DATA_BITS       17
`define DATA_WIDTH      2**`DATA_BITS
`define DATA_END        `DATA_BEGIN + `DATA_WIDTH - 1

// Stack start
`define STACK_ADDRESS   `DATA_END - 3

// `define TEXT_HEX  "test.rom.vh"
// `define DATA_HEX  "test.ram.vh"

`endif

