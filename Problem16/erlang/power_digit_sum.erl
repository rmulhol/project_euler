-module(power_digit_sum).
-include_lib("eunit/include/eunit.hrl").
-export([power_digit_sum/2]).

power_digit_sum(Digit, Power) ->
  Product = math:pow(Digit, Power),
  RoundedProduct = round(Product),
  ProductAsList = integer_to_list(RoundedProduct),
  lists:sum(ProductAsList) - 48 * length(ProductAsList).

power_digit_sum_test() ->
  7 = power_digit_sum(2, 4).
