distinct_powers a b = length(sort_out_duplicates(integer_combinations a b))

integer_combinations a b = [x ** y | x <- [a..b], y <- [a..b]]

sort_out_duplicates [] = []
sort_out_duplicates (x:xs) = sort_out_duplicates ys ++ [x] ++ sort_out_duplicates zs
  where
    ys = [a | a <- xs, a < x]
    zs = [b | b <- xs, b > x]
