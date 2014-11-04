-module(even_fibonacci_numbers).
-include_lib("eunit/include/eunit.hrl").
-export([sum_even_fibonacci_numbers_up_to_4000000/0]).

sum_even_fibonacci_numbers_up_to_4000000() ->
  MyList = generate_fibonacci_numbers_list(0, [], 0),
  EvenNumbers = parse_even_numbers(MyList),
  lists:sum(EvenNumbers).

sum_even_fibonacci_numbers_up_to_4000000_test() ->
  4613732 = sum_even_fibonacci_numbers_up_to_4000000().

fibonacci_number_index(0) -> 0;
fibonacci_number_index(1) -> 1;
fibonacci_number_index(N) -> 
  fibonacci_number_index(N-1) + fibonacci_number_index(N-2).

fibonacci_number_index_test() ->
  5 = fibonacci_number_index(5).

generate_fibonacci_numbers_list(Number, List, Increment) when Number > 4000000 ->
  [X || X <- List, X < 4000000];
generate_fibonacci_numbers_list(Number, List, Increment) ->
  NextValue = fibonacci_number_index(Increment),
  NewList = [NextValue|List],
  generate_fibonacci_numbers_list(NextValue, NewList, Increment + 1).

parse_even_numbers(List) ->
  [X || X <- List, X rem 2 =:= 0].

parse_even_numbers_test() ->
  TestList = [1, 2, 3, 4, 5, 6],
  [2, 4, 6] = parse_even_numbers(TestList).
