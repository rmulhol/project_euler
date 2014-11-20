factorial_digit_sum :: Integer -> Integer
factorial_digit_sum a = sum(to_digits(product[1..a]))

to_digits :: Integer -> [Integer]
to_digits 0 = []
to_digits n = n `mod` 10 : to_digits(n `div` 10)
