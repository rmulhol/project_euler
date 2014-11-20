class SmallestMultiple
  def smallest_multiple n
    (1..n).reduce(:lcm)
  end
end
