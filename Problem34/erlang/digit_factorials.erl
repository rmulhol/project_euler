-module(digit_factorials).
-include_lib("eunit/include/eunit.hrl").
-export([digit_factorials/0]).

digit_factorials() ->
  lists:sum([X || X <- lists:seq(3,100000), X == digits_factorials_sum(X)]).

digit_factorials_test() ->
  40730 = digit_factorials().

digits_factorials_sum(Num) ->
  lists:sum([factorial(X) || X <- to_digits(Num)]).

digits_factorials_sum_test() ->
  145 = digits_factorials_sum(145).

factorial(Num) -> factorial(Num, 1).

factorial(0, Acc) -> Acc;
factorial(Num, Acc) when Num > 0 ->
  factorial(Num - 1, Num * Acc).

factorial_test() ->
  120 = factorial(5).

to_digits(0) -> [];
to_digits(Num) ->
  [Num rem 10 | to_digits(Num div 10)].

to_digits_test() ->
  [5, 2, 1] = to_digits(125).
