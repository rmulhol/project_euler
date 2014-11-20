largest_palindrome_product = maximum(palindrome_products_of_3_digit_integers)

palindrome_products_of_3_digit_integers = [a*b | a <- [100..999], b <- [100..999], to_digits(a * b) == reverse(to_digits(a * b))]

to_digits 0 = []
to_digits n = n `rem` 10 : to_digits (n `div` 10)
