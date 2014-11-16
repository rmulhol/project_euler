
largest_prime_factor x = maximum(prime_factors x)

prime_factors x = [a | a <- factors(x), factors(a) == [1, a]]

factors x = [a | a <- [1..x], x `mod` a == 0]


