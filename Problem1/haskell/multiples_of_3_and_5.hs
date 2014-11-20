sum_multiples_of_3_and_5_below :: Integer -> Integer
sum_multiples_of_3_and_5_below num = sum(unique_multiples)
  where
    multiples = find_multiples_of_3_and_5_below num
    unique_multiples = remove_duplicates(multiples)

find_multiples_of_3_and_5_below :: Integer -> [Integer]
find_multiples_of_3_and_5_below num = multiples_of_3 ++ multiples_of_5
  where
    multiples_of_3 = find_multiples_of_3_below num 
    multiples_of_5 = find_multiples_of_5_below num 

remove_duplicates :: [Integer] -> [Integer]
remove_duplicates [] = []
remove_duplicates(x:xs) = remove_duplicates ys ++ [x] ++ remove_duplicates zs
  where
    ys = [a | a <- xs, a < x]
    zs = [b | b <- xs, b > x]

find_multiples_of_3_below :: Integer -> [Integer]
find_multiples_of_3_below num = [x | x <- [1..(num-1)], x `mod` 3 == 0]

find_multiples_of_5_below :: Integer -> [Integer]
find_multiples_of_5_below num = [x | x <- [1..(num-1)], x `mod` 5 == 0]
