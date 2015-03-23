-module(gen_udt_proto).

-export([parse/1, serialize/1,
         parse/2, serialize/2 ]).
         
parse(Packet) -> parse(Packet, []).
