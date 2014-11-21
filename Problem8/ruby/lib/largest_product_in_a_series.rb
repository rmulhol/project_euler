class LargestProduct

  def find_largest_product_in_series int, seq_ln
    digits = convert_int_to_array_of_digits int
    sequences = slice_array_into_sequences digits, seq_ln
    products = sequences.map do |seq|
      seq.reduce(:*)
    end
    products.max
  end

  def slice_array_into_sequences arr, seq_ln
    sequences = []
    loop do
      sequences << arr.slice(0, seq_ln)
      arr.shift
      break if arr.length < seq_ln
    end
    sequences
  end

  def convert_int_to_array_of_digits int
    int.to_s.split(//).map { |n| n.to_i }
  end

end
