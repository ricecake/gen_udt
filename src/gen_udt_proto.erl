-module(gen_udt_proto).

-export([parse/1, serialize/1,
         parse/2, serialize/2 ]).
         
parse(Packet) -> parse(Packet, []).
serialize(Packet) -> serialize(Packet, []).

parse(Packet, Opts) when is_binary(Packet) -> {ok, #{}}.
serialize(Packet, Opts) when is_map(Packet) -> {ok, <<"">>}.
