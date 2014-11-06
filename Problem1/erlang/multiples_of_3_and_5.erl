-module(multiples_of_3_and_5).
-include_lib("eunit/include/eunit.hrl").
-export([sum_multiples_of_3_and_5_below/1]).

sum_multiples_of_3_and_5_below(Number) ->
  MyList = create_list_of_1_to(Number - 1),
  MultiplesOf3Or5 = get_multiples_of_3_or_5(MyList),
  lists:sum(MultiplesOf3Or5).

sum_multiples_of_3_and_5_below_test() ->
  23 = sum_multiples_of_3_and_5_below(10).

create_list_of_1_to(Number) ->
  lists:seq(1, Number).

create_list_of_1_to_test() ->
  TestList = [1, 2, 3],
  TestList = create_list_of_1_to(3).

get_multiples_of_3_or_5(MyList) ->
  MultiplesOf3 = get_multiples_of(3, MyList),
  MultiplesOf5 = get_multiples_of(5, MyList),
  lists:umerge(MultiplesOf3, MultiplesOf5).

get_multiples_of_3_or_5_test() ->
  TestList = [1, 2, 3, 4, 5, 6, 7, 8, 9],
  [3, 5, 6, 9] = get_multiples_of_3_or_5(TestList).

get_multiples_of(Number, List) ->
  [X || X <- List, X rem Number =:= 0].

get_multiples_of_test() ->
  TestList = [1, 2, 3, 4, 5, 6],
  [3, 6] = get_multiples_of(3, TestList).
