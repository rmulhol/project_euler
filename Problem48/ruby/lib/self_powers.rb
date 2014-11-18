class SelfPowers
  def sum_self_powers_up_to n
    self_powers_up_to(n).reduce(:+)
  end
  
  def self_powers_up_to n
    (1..n).to_a.map do |num|
      num ** num
    end
  end
end
