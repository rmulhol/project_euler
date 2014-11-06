factorial_digit_sum a = sum(digits(product[1..a]))

digits 0 = []
digits n = n `mod` 10 : digits(n `div` 10)
