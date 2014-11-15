require 'even_fibonacci_numbers'

describe EvenFibonacciNumbers do
  let(:new_problem) { described_class.new }

  describe "#sum_even_fibonaccis_below" do
    it "finds 10 as the sum of fibonacci numbers below 10" do
      expect(new_problem.sum_even_fibonaccis_below(10)).to eq(10)
    end

    it "finds the sum of fibonacci numbers below 4000000" do
      expect(new_problem.sum_even_fibonaccis_below(4000000)).to eq(4613732)
    end
  end
  
  describe "#fibonacci_numbers" do
    it "finds 1 as the first fibonacci number" do
      expect(new_problem.fibonacci_number(1)).to eq(1)
    end

    it "finds 8 as the fifth fibonacci number" do
      expect(new_problem.fibonacci_number(5)).to eq(8)
    end
  end

  describe "#fibonacci_numbers_below" do
    it "finds fibonacci numbers below 10" do
      expect(new_problem.fibonacci_numbers_below(10)).to eq([1, 2, 3, 5, 8])
    end

    it "finds fibonacci numbers below 100" do
      fibs_below_100 = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
      expect(new_problem.fibonacci_numbers_below(100)).to eq(fibs_below_100)
    end
  end

end
