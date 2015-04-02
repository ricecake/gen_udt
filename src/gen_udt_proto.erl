-module(gen_udt_proto).

-export([parse/1, serialize/1,
         parse/2, serialize/2 ]).
         
parse(Packet) -> parse(Packet, []).
serialize(Packet) -> serialize(Packet, []).


%   The data packet header structure is as following.
%
%   0                   1                   2                   3
%   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
%   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
%   |0|                     Packet Sequence Number                  |
%   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
%   |FF |O|                     Message Number                      |
%   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
%   |                          Time Stamp                           |
%   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
%   |                    Destination Socket ID                      |
%   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
parse(Packet, Opts) when is_binary(Packet) -> {ok, #{}}.


serialize(Packet, Opts) when is_map(Packet) -> {ok, <<"">>}.
