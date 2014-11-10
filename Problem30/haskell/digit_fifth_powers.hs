digit_fifth_powers = sum([x | x <- [2..200000], sum(toDigits(x)) == x])

toDigits 0 = []
toDigits n = (n `mod` 10) ^ 5 : toDigits (n `div` 10)
