require 'amicable_numbers'

describe AmicableNumbers do
  let(:test) { described_class.new }

  describe "#sum_of_amicable_numbers_below" do
    it "sums amicable numbers under 10000" do
      expect(test.sum_of_amicable_numbers_below(10000)).to eq(31626)
    end
  end

  describe "#amicable_number?" do
    it "recognizes that 220 is amicable" do
      expect(test.amicable_number?(220)).to be_truthy
    end

    it "recognizes that 4 is not amicable" do
      expect(test.amicable_number?(4)).to be_falsey
    end
  end

  describe "#sum_of_divisors" do
    it "sums the factors of 1" do 
      expect(test.sum_of_divisors(1)).to eq(nil)
    end

    it "sums the divisors of 2" do
      expect(test.sum_of_divisors(2)).to eq(1)
    end

    it "sums the divisors of 4" do
      expect(test.sum_of_divisors(4)).to eq(3)
    end
  end

  describe "#divisors" do
    it "finds [] as divisor for  1" do
      expect(test.divisors(1)).to eq([])
    end

    it "finds [1] as divisor for  2" do
      expect(test.divisors(2)).to eq([1])
    end

    it "finds [1, 2] as divisors for 4" do
      expect(test.divisors(4)).to eq([1, 2])
    end
  end
end
