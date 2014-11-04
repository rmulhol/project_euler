-module(prime_factors).
-include_lib("eunit/include/eunit.hrl").
-export([factors/1]).

factors(N) ->
  factors(N, 2, []).

factors(1, _, Acc) -> Acc;
factors(N, K, Acc) when N rem K == 0 ->
  factors(N div K, K, [K|Acc]);
factors(N, K, Acc) ->
  factors(N, K+1, Acc).
