-module(rabbits).
-export([rabbits/2]).

rabbits(M, L) ->
   rabbits(M - 1, L, 1, 0).

rabbits(0, _, N, R) ->
   N + R;
rabbits(M, L, N, R) ->
   rabbits(M - 1, L, R * L, N + R).
