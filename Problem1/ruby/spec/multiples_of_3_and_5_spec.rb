require 'multiples_of_3_and_5'

describe MultiplesOf3And5 do
  let(:new_problem) { described_class.new }
  
  describe "#sum_of_multiples_of_3_and_5_below" do
    it "sums multiples of 3 and 5 below 10" do
      expect(new_problem.sum_of_multiples_of_3_and_5_below(10)).to eq(23)
    end

    it "sums multiples of 3 and 5 below 1000" do
      expect(new_problem.sum_of_multiples_of_3_and_5_below(1000)).to eq(233168)
    end
  end

  describe "#numbers_below" do
    it "creates a list of 1" do
      expect(new_problem.numbers_below(2)).to eq([1])
    end

    it "creates a list below 10" do
      numbers_below_10 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(new_problem.numbers_below(10)).to eq(numbers_below_10)
    end

    it "creates a list of numbers below 1000" do
      numbers_below_1000 = (1..999).to_a
      expect(new_problem.numbers_below(1000)).to eq(numbers_below_1000)
    end
  end

  describe "#multiples_of_3" do
    it "sorts multiples of 3 below 6" do
      numbers_below_6 = [1, 2, 3, 4, 5]
      expect(new_problem.multiples_of_3(numbers_below_6)).to eq([3])
    end

    it "sorts multiples of 3 below 10" do
      numbers_below_10 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(new_problem.multiples_of_3(numbers_below_10)).to eq([3, 6, 9])
    end
  end

  describe "#multiples_of_5" do
    it "sorts multiples of 5 below 6" do
      numbers_below_6 = [1, 2, 3, 4, 5]
      expect(new_problem.multiples_of_5(numbers_below_6)).to eq([5])
    end

    it "sorts multiples of 5 below 11" do
      numbers_below_11 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      expect(new_problem.multiples_of_5(numbers_below_11)).to eq([5, 10])
    end
  end
end
