largest_prime_factor :: Integer -> Integer
largest_prime_factor num = maximum(prime_factors num)

prime_factors :: Integer -> [Integer]
prime_factors num
  | num == 1 = []
  | otherwise = p : prime_factors (num `div` p) where p = lowest_divisor num

lowest_divisor :: Integer -> Integer
lowest_divisor num = lowest_divisor_from 2 num

lowest_divisor_from :: Integer -> Integer -> Integer
lowest_divisor_from threshold num 
  | divides threshold num = threshold
  | threshold ^ 2 > num = num
  | otherwise = lowest_divisor_from (threshold+1) num

divides :: Integer -> Integer -> Bool
divides divisor num = num `rem` divisor == 0
