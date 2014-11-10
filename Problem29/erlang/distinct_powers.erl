-module(distinct_powers).
-include_lib("eunit/include/eunit.hrl").
-export([distinct_powers/2]).

distinct_powers(MinValue, MaxValue) ->
  ListMinToMax = lists:seq(MinValue, MaxValue),
  CompleteList = [math:pow(X,Y) || X <- ListMinToMax, Y <- ListMinToMax],
  DistinctTerms = sort_out_duplicates(CompleteList),
  length(DistinctTerms).

distinct_powers_test() ->
  15 = distinct_powers(2,5).

sort_out_duplicates([]) -> [];
sort_out_duplicates([H|T]) ->
  sort_out_duplicates([Smaller || Smaller <- T, Smaller < H])
  ++ [H] ++
  sort_out_duplicates([Larger || Larger <- T, Larger > H]).

sort_out_duplicates_test() -> 
  [1,2,3] = sort_out_duplicates([1,1,2,2,3,3]).
