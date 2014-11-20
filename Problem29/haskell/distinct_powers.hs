distinct_powers :: Integer -> Integer -> Int
distinct_powers a b = length(remove_duplicates(integer_combinations a b))

integer_combinations :: Integer -> Integer -> [Integer]
integer_combinations a b = [x ^ y | x <- [a..b], y <- [a..b]]

remove_duplicates :: Ord a => [a] -> [a]
remove_duplicates [] = []
remove_duplicates (x:xs) = remove_duplicates ys ++ [x] ++ remove_duplicates zs
  where
    ys = [a | a <- xs, a < x]
    zs = [b | b <- xs, b > x]
