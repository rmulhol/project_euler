require 'sum_square_difference'

describe SumSquareDifference do
  let(:test) { described_class.new }
 
  describe "#sum_square_difference" do
    it "subtracts the sum of the squares from the square of the sum" do
      expect(test.sum_square_difference(10)).to eq(2640)
    end

    it "substracts the sum of the squares from the square of the sum" do
      expect(test.sum_square_difference(100)).to eq(25164150)
    end
  end

  describe "#sum_of_the_squares" do
    it "provides the sum of the squares every integer in an array" do
      expect(test.sum_of_the_squares([1,2,3])).to eq(14)
    end
  end

  describe "#square_of_the_sum" do
    it "provides the square of the sum of every integer in an array" do
      expect(test.square_of_the_sum([1,2,3])).to eq(36)
    end
  end
end 
