class LargestPrimeFactor
  def largest_prime_factor n
    prime_factors(n).max
  end
  
  def prime_factors n
    factors, divisor = [], 1
    while n > 1 and divisor += 1
      factors << divisor and n /= divisor while n % divisor == 0
    end
    factors
  end
end
