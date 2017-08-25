module streamer128p
`include "v/streamers/streamer_body.h"
reg [7:0] Index;
reg [7:0] IndexMax, IndexMax_next;
reg [7:0] IndexR, IndexR_next;
reg [7:0] IndexW, IndexW_next;

onchip_128_pulse mem(
   .address(Index),
   .clock(iCLK),
   .data(iDATA_TIME),
   .wren(|WrEn),
   .q(TimeToChange)
);
endmodule
