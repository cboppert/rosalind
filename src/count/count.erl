-module(count).
-export([count/1]).

count([]) ->
   {0, 0, 0, 0};
count(S) ->
   counter(S, {0,0,0,0}).

counter([65|R], {A,C,G,T}) ->
   counter(R, {A + 1, C, G, T});
counter([67|R], {A, C, G, T}) ->
   counter(R, {A, C + 1, G, T});
counter([71|R], {A, C, G, T}) ->
   counter(R, {A, C, G + 1, T});
counter([84|R], {A, C, G, T}) ->
   counter(R, {A, C, G, T + 1});
counter([], {A, C, T, G}) ->
   {A, C, T, G}.
