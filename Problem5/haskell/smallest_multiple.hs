smallest_multiple_below :: Integer -> Integer
smallest_multiple_below num = smallest_multiple num 1

smallest_multiple :: Integer -> Integer -> Integer
smallest_multiple 1 acc = acc
smallest_multiple num acc = smallest_multiple (num-1) (lcm acc num)
