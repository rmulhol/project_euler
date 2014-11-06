sum_square_difference x = square_of_the_sum x - sum_of_the_squares[1..x]

sum_of_the_squares [] = 0
sum_of_the_squares (x:xs) = (x * x) + sum_of_the_squares xs 

square_of_the_sum x = sum[1..x] * sum[1..x]
