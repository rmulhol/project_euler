require '1000_digit_fib'

describe FibDigit do
  let(:test) { described_class.new }

  describe "#find_index_of_first_fib_with_digit_length" do
    it "finds the index of the first fib with digit length 2" do
      expect(test.find_index_of_first_fib_with_digit_length(2)).to eq(7)
    end

    it "finds the index of the first fib with digit length 3" do
      expect(test.find_index_of_first_fib_with_digit_length(3)).to eq(12)
    end

    it "finds the index of the first fib with digit length 1000" do
      expect(test.find_index_of_first_fib_with_digit_length(1000)).to eq(4782)
    end
  end

  describe "#required_length_reached?" do
    it "returns false if length is less than required" do
      expect(test.required_length_reached?(123, 4)).to be_falsey
    end
  end
end
