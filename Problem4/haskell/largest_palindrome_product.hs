largest_palindrome_product_of_integers_between :: Integer -> Integer -> Integer
largest_palindrome_product_of_integers_between min max = 
  maximum(palindrome_products_of_integers_between min max)

palindrome_products_of_integers_between :: Integer -> Integer -> [Integer]
palindrome_products_of_integers_between min max = 
  [a*b | a <- [min..max], b <- [min..max], to_digits(a * b) == reverse(to_digits(a * b))]

to_digits :: Integer -> [Integer]
to_digits 0 = []
to_digits n = n `rem` 10 : to_digits (n `div` 10)
