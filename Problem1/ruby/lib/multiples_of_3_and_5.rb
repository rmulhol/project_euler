class MultiplesOf3And5
  def sum_of_multiples_of_3_and_5_below(x)
    numbers = numbers_below(x)
    multiples = multiples_of_3(numbers) + multiples_of_5(numbers)
    unique_multiples = multiples.uniq
    unique_multiples.inject(:+)
  end
  
  def numbers_below(max)
    (1..max - 1).to_a
  end

  def multiples_of_3(list)
    list.select do |n|
      n % 3 == 0
    end
  end

  def multiples_of_5(list)
    list.select do |n|
      n % 5 == 0
    end
  end
end
