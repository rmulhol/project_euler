require 'smallest_multiple'

describe SmallestMultiple do
  let(:test) { described_class.new }

  describe "smallest_multiple" do
    it "finds lowest common multiple of ints bw 1 and 10" do
      expect(test.smallest_multiple(10)).to eq(2520)
    end

    it "finds the lowest common multiple of ints bw 1 and 20" do
      expect(test.smallest_multiple(20)).to eq(232792560)
    end
  end
end
