sum_multiples_of_3_and_5_up_to n = sum(remove_duplicates(find_multiples_of_3_and_5 n))

find_multiples_of_3_and_5 n = find_multiples_of_3 n ++ find_multiples_of_5 n 

remove_duplicates [] = []
remove_duplicates(x:xs) = remove_duplicates ys ++ [x] ++ remove_duplicates zs
  where
    ys = [a | a <- xs, a < x]
    zs = [b | b <- xs, b > x]

find_multiples_of_3 n = [x | x <- [1..n], x `mod` 3 == 0]

find_multiples_of_5 n = [x | x <- [1..n], x `mod` 5 == 0]
