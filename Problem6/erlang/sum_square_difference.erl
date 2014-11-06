-module(sum_square_difference).
-include_lib("eunit/include/eunit.hrl").
-export([sum_square_difference/1]).

sum_square_difference(N) ->
  SumOfTheSquares = sum_of_the_squares(N),
  SquareOfTheSum = square_of_the_sum(N),
  SquareOfTheSum - SumOfTheSquares.

sum_square_difference_test() ->
  2640 = sum_square_difference(10).

sum_of_the_squares(N) ->
  MySequence = lists:seq(1, N),
  Squares = [X*X || X <- MySequence],
  lists:sum(Squares).

sum_of_the_squares_test() ->
  385 = sum_of_the_squares(10).

square_of_the_sum(N) ->
  MySequence = lists:seq(1, N),
  Sum = lists:sum(MySequence),
  Sum * Sum.

square_of_the_sum_test() ->
  3025 = square_of_the_sum(10).
