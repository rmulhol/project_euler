sum_square_difference :: Integer -> Integer
sum_square_difference x = square_of_the_sum x - sum_of_the_squares[1..x]

sum_of_the_squares :: [Integer] -> Integer
sum_of_the_squares [] = 0
sum_of_the_squares (x:xs) = (x * x) + sum_of_the_squares xs 

square_of_the_sum :: Integer -> Integer
square_of_the_sum x = sum[1..x] * sum[1..x]
