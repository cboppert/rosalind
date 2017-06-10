-module(complement).
-export([complement/1]).

complement([]) ->
   "";
complement(S) ->
   complementer(S, "").

complementer([], O) ->
   O;
complementer([65|T], O) ->
   complementer(T, string:concat("T", O));
complementer([67|T], O) ->
   complementer(T, string:concat("G", O));
complementer([71|T], O) ->
   complementer(T, string:concat("C", O));
complementer([84|T], O) ->
   complementer(T, string:concat("A", O)).
