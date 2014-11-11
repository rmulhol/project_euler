maximum_sum = maximum(all_exponentiations)

all_exponentiations = [sum(to_digits(x ^ y)) | x <- [1..99], y <- [1..99]]

to_digits 0 = []
to_digits x = x `mod` 10 : to_digits (x `div` 10)
