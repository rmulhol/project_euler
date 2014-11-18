require 'self_powers'

describe SelfPowers do
  let(:test) { described_class.new }
  
  describe "#sum_of_self_powers_up_to" do
    it "sums self powers up to 5" do
      expect(test.sum_self_powers_up_to(10)).to eq(10405071317)
    end
  end

  describe "#self_powers_up_to" do
    it "provides a list of self powers up to 5" do
      expect(test.self_powers_up_to(5)).to eq([1, 4, 27, 256, 3125])
    end
  end
end
