-module(even_fibonacci_numbers).
-include_lib("eunit/include/eunit.hrl").
-export([sum_even_fibonacci_numbers_up_to/1]).

sum_even_fibonacci_numbers_up_to(Maximum) ->
  MyList = generate_fibonacci_numbers_below_maximum(0, [], 0, Maximum),
  EvenNumbers = parse_even_numbers(MyList),
  lists:sum(EvenNumbers).

sum_even_fibonacci_numbers_up_to_test() ->
  44= sum_even_fibonacci_numbers_up_to(100).

fibonacci_number_index(0) -> 0;
fibonacci_number_index(1) -> 1;
fibonacci_number_index(N) -> 
  fibonacci_number_index(N-1) + fibonacci_number_index(N-2).

fibonacci_number_index_test() ->
  5 = fibonacci_number_index(5).

generate_fibonacci_numbers_below_maximum(Number, List, Increment, Maximum) when Number > Maximum ->
  [X || X <- List, X < Maximum];
generate_fibonacci_numbers_below_maximum(Number, List, Increment, Maximum) ->
  NextValue = fibonacci_number_index(Increment),
  NewList = [NextValue|List],
  generate_fibonacci_numbers_below_maximum(NextValue, NewList, Increment + 1, Maximum).

generate_fibonacci_numbers_below_maximum_test() ->
  FirstTen = [89, 55, 34, 21, 13, 8, 5, 3, 2, 1, 1, 0],
  FirstTen = generate_fibonacci_numbers_below_maximum(0, [], 0, 100).

parse_even_numbers(List) ->
  [X || X <- List, X rem 2 =:= 0].

parse_even_numbers_test() ->
  TestList = [1, 2, 3, 4, 5, 6],
  [2, 4, 6] = parse_even_numbers(TestList).
