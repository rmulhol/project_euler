-module(powerful_digit_sum).
-include_lib("eunit/include/eunit.hrl").
-export([powerful_digit_sum_below/1]).

powerful_digit_sum_below(MaxValue) ->
  Sums = [lists:sum(to_digits(raise_to_exponent(X,Y))) || X <- lists:seq(1, MaxValue - 1), Y <- lists:seq(1, MaxValue - 1)],
  lists:max(Sums).

to_digits(0) -> [];
to_digits(X) ->
  [X rem 10 | to_digits(X div 10)].

to_digits_test() ->
  [1, 2, 3] = lists:reverse(to_digits(123)).

raise_to_exponent(X, N) ->
  raise_to_exponent(X, N, 1).

raise_to_exponent(X, N, Acc) when (N rem 2) =:= 0 ->
  raise_to_exponent(X*X, N div 2, Acc);
raise_to_exponent(X, N, Acc) ->
  NewAcc = Acc * X,
  case N div 2 of
    0 ->
      NewAcc;
    _ ->
      raise_to_exponent(X*X, N div 2, NewAcc)
  end.

