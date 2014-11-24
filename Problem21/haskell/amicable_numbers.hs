sum_of_amicable_numbers_up_to :: Integer -> Integer
sum_of_amicable_numbers_up_to num = sum(amicable_numbers_up_to num)

amicable_numbers_up_to :: Integer -> [Integer]
amicable_numbers_up_to num = [x | x <- [1..num], amicable_number x]

amicable_number :: Integer -> Bool
amicable_number num = num == sum_of_divisors partner && num /= partner
  where
    partner = sum_of_divisors num

sum_of_divisors :: Integer -> Integer
sum_of_divisors num = sum(divisors_of num)

divisors_of :: Integer -> [Integer]
divisors_of num = [x | x <- [1..(num - 1)], num `mod` x == 0]
