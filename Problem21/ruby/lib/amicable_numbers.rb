class AmicableNumbers
  def sum_of_amicable_numbers_below(x)
    amicable_numbers = (2..x).select { |n| amicable_number?(n) }
    amicable_numbers.reduce(:+)
  end

  def amicable_number?(x)
    partner = sum_of_divisors(x)
     x != partner && x == sum_of_divisors(partner)
  end

  def sum_of_divisors(x)
    divisors(x).reduce(:+)
  end
  
  def divisors(x)
    (1..x).select { |n| x % n == 0 && n < x }
  end
end
