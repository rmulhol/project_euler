-module(factorial_digit_sum).
-include_lib("eunit/include/eunit.hrl").
-export([factorial_digit_sum/1]).

factorial_digit_sum(Digit) ->
  Factorial = factorial(Digit),
  RoundedFactorial = round(Factorial),
  FactorialAsList = integer_to_list(RoundedFactorial),
  lists:sum(FactorialAsList) - 48 * length(FactorialAsList).

factorial_digit_sum_test() ->
  27 = factorial_digit_sum(10).

factorial(0) -> 1;
factorial(N) when N > 0 ->
  N * factorial(N - 1).

factorial_test() ->
  3628800 = factorial(10).
