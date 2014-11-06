power_digit_sum a b = sum(digits(round(a ** b)))

digits 0 = []
digits n = n `mod` 10 : digits(n `div` 10)
