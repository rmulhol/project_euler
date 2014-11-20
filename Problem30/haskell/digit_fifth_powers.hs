digit_fifth_powers :: Integer
digit_fifth_powers = sum([x | x <- [2..200000], sum(fifth_powers(to_digits(x))) == x])

fifth_powers :: [Integer] -> [Integer]
fifth_powers [] = []
fifth_powers (x:xs) = x ^ 5 : fifth_powers xs

to_digits :: Integer -> [Integer]
to_digits 0 = []
to_digits n = n `mod` 10 : to_digits (n `div` 10)
