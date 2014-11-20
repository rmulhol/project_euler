-module(smallest_multiple).
-include_lib("eunit/include/eunit.hrl").
-export([smallest_multiple/0]).

smallest_multiple() ->
  MyList = lists:seq(200000000, 300000000, 20),
  Multiples = [X || X <- MyList, X rem 19 =:= 0, 
    X rem 18 =:= 0, X rem 17 =:= 0, X rem 16 =:= 0, X rem 15 =:= 0,
    X rem 14 =:= 0, X rem 13 =:= 0, X rem 12 =:= 0, X rem 11 =:= 0],
  lists:min(Multiples).
