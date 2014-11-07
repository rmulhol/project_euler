-module(special_pythagorean_triplet).
-include_lib("eunit/include/eunit.hrl").
-compile(export_all).

product_of_pythagorean_triplet_with_sum(N) ->
  MyList = pythagorean_triplets_below(N),
  SpecialTriplet = [X || X <- MyList, lists:sum(X) =:= N],
  multiply(lists:flatten(SpecialTriplet), 1).

pythagorean_triplets_below(N) ->
  [[X, Y, Z] || 
    X <- lists:seq(1,N-2), 
    Y <- lists:seq(X+1,N-1), 
    Z <- lists:seq(Y+1,N), 
    X + Y + Z =< N,
    X * X + Y * Y =:= Z * Z
  ].


multiply([], Acc) -> Acc;
multiply([H|T], Acc) ->
  multiply(T, H * Acc).

multiply_test() ->
  6 = multiply([1, 2, 3], 1).
