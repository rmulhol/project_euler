-module(amicable_numbers).
-include_lib("eunit/include/eunit.hrl").
-compile(export_all).

sum_of_amicable_numbers_below(Max) ->
  lists:sum(amicable_numbers_below(Max)).

sum_of_amicable_numbers_below_test() ->
  504 = sum_of_amicable_numbers_below(300).

amicable_numbers_below(Max) ->
  [X || X <- lists:seq(2, Max), amicable_number(X), amicable_number_not_self(X)].

amicable_numbers_below_test() ->
  [220, 284] = amicable_numbers_below(300).

amicable_number(Num) ->
  Partner = sum_of_divisors(Num),
  Num == sum_of_divisors(Partner).

amicable_number_test() ->
  true = amicable_number(220).

amicable_number_not_self(Num) ->
  Partner = sum_of_divisors(Num),
  Num /= Partner.

amicable_number_not_self_test() ->
  false = amicable_number_not_self(6).

sum_of_divisors(Num) ->
  lists:sum(divisors_of(Num)).

sum_of_divisors_test() ->
  3 = sum_of_divisors(4).

divisors_of(Num) ->
  [X || X <- lists:seq(1, Num), Num rem X == 0, X < Num].

divisors_of_test() ->
  [1, 2] = divisors_of(4).
