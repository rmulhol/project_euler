class FibDigit
  def find_index_of_first_fib_with_digit_length ln
    fibs = [0, 1]
    until required_length_reached? fibs[-1], ln
      fibs << fibs[-2] + fibs[-1]
    end
    fibs.index(fibs[-1])
  end

  def required_length_reached? int, ln
    int.to_s.split(//).length >= ln
  end
end
