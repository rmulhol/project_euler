product_of_special_pythagorean_triplet :: Integer -> Integer
product_of_special_pythagorean_triplet n = multiply(concatenate(pythagorean_triplets_below n), 1)

pythagorean_triplets_below :: Integer -> [[Integer]]
pythagorean_triplets_below n = [[x, y, z] | x <- [1..(n `div` 2)], y <- [x+1..(n `div` 2)], z <- [y+1..(n `div` 2)], x + y + z == n,  x^2 + y^2 == z^2]

multiply :: ([Integer], Integer) -> Integer
multiply([], acc) = acc
multiply(x:xs, acc) = multiply(xs, x * acc)

concatenate :: [[a]] -> [a]
concatenate([]) = []
concatenate(xss) = foldr (++) [] xss
