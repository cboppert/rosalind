-module(transcribe).
-export([transcribe/1]).

transcribe([]) ->
   "";
transcribe(S) ->
   transcriber(S, "").

transcriber([], O) ->
   O;
transcriber([84|T], O) ->
   transcriber(T, string:concat(O, "U"));
transcriber([H|T], O) ->
   transcriber(T, string:concat(O, [H])).
