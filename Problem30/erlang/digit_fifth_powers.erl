-module(digit_fifth_powers).
-compile(export_all).

digitFifthPowers() ->
  lists:sum([X || X <- lists:seq(2,200000), lists:sum(fifthPowerDigits(X)) == X]).

fifthPowerDigits(0) -> [];
fifthPowerDigits(X) ->
  [round(math:pow((X rem 10), 5)) | fifthPowerDigits(X div 10)].
