-module(prime_10001).
-include_lib("eunit/include/eunit.hrl").
-export([find_prime/2]).

find_prime(N, Max) ->
  Primes = inefficient_sieve(Max),
  lists:nth(N, Primes).

find_prime_test() ->
  5 = find_prime(3, 10).

inefficient_sieve([]) ->
  [];
inefficient_sieve([H|T]) ->
  List = lists:filter(fun(N) -> N rem H =/= 0 end, T),
  [H | inefficient_sieve(List)];
inefficient_sieve(N) ->
  inefficient_sieve(lists:seq(2,N)).

inefficient_sieve_test() ->
  [2, 3, 5, 7] = inefficient_sieve(10).
