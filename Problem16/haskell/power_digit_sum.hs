power_digit_sum :: Integer -> Integer -> Integer
power_digit_sum a b = sum(to_digits(a ^ b))

to_digits :: Integer -> [Integer]
to_digits 0 = []
to_digits n = n `mod` 10 : to_digits(n `div` 10)
