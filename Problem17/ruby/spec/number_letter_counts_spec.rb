require "number_letter_counts"

describe NumberLetterCounter do
  let(:test) { described_class.new }

  describe "#letter_count_of_numbers" do
    it "counts 6 letters in [1, 2] spelled our as 'one' and 'two'" do
      expect(test.letter_count_of_numbers([1, 2])).to eq(6)
    end
    
    it "counts 11 letters in the sequence [1, 2, 3] spelled out as 'one', 'two', 'three'" do
      expect(test.letter_count_of_numbers([1, 2, 3, 4, 5])).to eq(19)
    end

    it "counts 21124 letters in (1..1000)" do
      expect(test.letter_count_of_numbers(1..1000)).to eq(21124)
    end
  end

  describe "#letter_count" do
    it "counts 3 letters to spell out 1 as 'one'" do
      expect(test.letter_count(1)).to eq(3)
    end

    it "counts 5 letters to spell out 3 as 'three'" do
      expect(test.letter_count(3)).to eq(5)
    end

    it "ignores spaces to count 'one hundred' as 10" do
      expect(test.letter_count(100)).to eq(10)
    end
  end

  describe "#to_letters" do
    [
      [1, "one"],
      [2, "two"],
      [3, "three"],
      [4, "four"],
      [5, "five"],
      [6, "six"],
      [7, "seven"],
      [8, "eight"],
      [9, "nine"],
      [10, "ten"],
      [11, "eleven"],
      [12, "twelve"],
      [13, "thirteen"],
      [14, "fourteen"],
      [15, "fifteen"],
      [16, "sixteen"],
      [17, "seventeen"],
      [18, "eighteen"],
      [19, "nineteen"],
      [20, "twenty"],
      [21, "twentyone"],
      [30, "thirty"],
      [31, "thirtyone"],
      [40, "forty"],
      [41, "fortyone"],
      [50, "fifty"],
      [51, "fiftyone"],
      [60, "sixty"],
      [61, "sixtyone"],
      [70, "seventy"],
      [71, "seventyone"],
      [80, "eighty"],
      [81, "eightyone"],
      [90, "ninety"],
      [91, "ninetyone"],
      [100, "one hundred"],
      [101, "one hundred and one"],
      [102, "one hundred and two"],
      [110, "one hundred and ten"],
      [199, "one hundred and ninetynine"],
      [200, "two hundred"],
      [201, "two hundred and one"],
      [299, "two hundred and ninetynine"]
    ].each do |num, letters|
      it "returns #{letters} for #{num}" do
        expect(test.to_letters(num)).to eq(letters)
      end
    end
  end
end
