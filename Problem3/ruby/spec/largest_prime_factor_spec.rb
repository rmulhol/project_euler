require "largest_prime_factor"

describe LargestPrimeFactor do
  let(:test) { described_class.new }

  describe "#largest_prime_factor" do
    it "provides the largest prime factor" do
      expect(test.largest_prime_factor(10)).to eq(5)
    end

    it "provides the largest prime factor for a large number" do
      expect(test.largest_prime_factor(600851475143)).to eq(6857)
    end
  end

  describe "#prime_factors" do
    [
      [1, []],
      [2, [2]],
      [3, [3]],
      [4, [2, 2]],
      [5, [5]],
      [6, [2, 3]],
      [7, [7]],
      [8, [2, 2, 2]],
      [9, [3, 3]]
    ].each do |n, factors|
      it "factors #{n}" do
        expect(test.prime_factors(n)).to eq(factors)
      end
    end
  end
end
