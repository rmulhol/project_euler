-module(prime_factors).
-include_lib("eunit/include/eunit.hrl").
-export([find_prime_factors/1]).

find_prime_factors(N) ->
  find_prime_factors(N, 2, []).

find_prime_factors(1, _, Acc) -> Acc;
find_prime_factors(N, K, Acc) when N rem K == 0 ->
  find_prime_factors(N div K, K, [K|Acc]);
find_prime_factors(N, K, Acc) ->
  find_prime_factors(N, K+1, Acc).

find_prime_factors_test() ->
  [5] = find_prime_factors(5).
