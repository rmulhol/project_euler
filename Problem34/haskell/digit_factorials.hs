digit_factorials = sum[x | x <- [3..100000], x == factorial_digits_sum(x)]

factorial_digits_sum n = sum[factorial x | x <- reverse(to_digits n)]

to_digits 0 = []
to_digits n = n `mod` 10 : to_digits (n `div` 10)

factorial 0 = 1
factorial n = n * factorial (n-1)
