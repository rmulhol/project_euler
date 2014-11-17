class SumSquareDifference
  def sum_square_difference x
    range = (1..x).to_a
    square_of_the_sum(range) - sum_of_the_squares(range)
  end
  
  def sum_of_the_squares x
    squares = x.map do |n|
      n * n
    end
    squares.reduce(:+)
  end

  def square_of_the_sum x
    sum = x.reduce(:+)
    sum * sum
  end
end
