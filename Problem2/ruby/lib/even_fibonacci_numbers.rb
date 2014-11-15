class EvenFibonacciNumbers
  
  def sum_even_fibonaccis_below(max)
    fibonaccis = fibonacci_numbers_below(max)
    evens = fibonaccis.select { |n| n % 2 == 0 }
    evens.inject(:+)
  end
  
  def fibonacci_numbers_below(max)
    fibonaccis = []
    counter = 1
    while fibonacci_number(counter) <= max
      fibonaccis << fibonacci_number(counter)
      counter += 1
    end
    fibonaccis
  end

  def fibonacci_number(n)
    if n == 1 || n == 2
      n
    else
      fibonacci_number(n-1) + fibonacci_number(n-2)
    end
  end
end
