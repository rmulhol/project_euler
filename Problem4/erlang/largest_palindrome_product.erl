-module(largest_palindrome_product).
-include_lib("eunit/include/eunit.hrl").
-export([largest_palindrome_product_of_ints_between/2]).

largest_palindrome_product_of_ints_between(Min, Max) ->
  Products = generate_products_of_integers_between(Min, Max),
  PalindromeProducts = isolate_palindromes(Products),
  lists:max(PalindromeProducts).

largest_palindrome_product_of_ints_between_test() ->
  9009 = largest_palindrome_product_of_ints_between(10,99).

generate_products_of_integers_between(Min, Max) ->
  [X*Y || X <- lists:seq(Min, Max), Y <- lists:seq(Min, Max)].

generate_products_of_integers_between_test() ->
  [1, 2, 2, 4] = generate_products_of_integers_between(1, 2).

isolate_palindromes(List) ->
  [X || X <- List, integer_to_list(X) == lists:reverse(integer_to_list(X))].

isolate_palindromes_test() ->
  [404] = isolate_palindromes([123, 404, 567]).

