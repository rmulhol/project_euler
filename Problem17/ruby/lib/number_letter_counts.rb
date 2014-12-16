class NumberLetterCounter

  def letter_count_of_numbers(nums)
    nums.map { |num| letter_count(num) }.inject(:+)
  end

  def letter_count(num)
    to_letters(num).gsub(/\s/,"").length
  end

  def to_letters(num)
    case num
    when 1 then "one"
    when 2 then "two"
    when 3 then "three"
    when 4 then "four"
    when 5 then "five"
    when 6 then "six"
    when 7 then "seven"
    when 8 then "eight"
    when 9 then "nine"
    when 10 then "ten"
    when 11 then "eleven"
    when 12 then "twelve"
    when 13 then "thirteen"
    when 14 then "fourteen"
    when 15 then "fifteen"
    when 18 then "eighteen"
    when 16..19 then to_letters(num-10) + "teen"
    when 20..29 then "twenty" + to_letters(num-20)
    when 30..39 then "thirty" + to_letters(num-30)
    when 40..49 then "forty" + to_letters(num-40)
    when 50..59 then "fifty" + to_letters(num-50)
    when 60..69 then "sixty" + to_letters(num-60)
    when 70..79 then "seventy" + to_letters(num-70)
    when 80..89 then "eighty" + to_letters(num-80)
    when 90..99 then "ninety" + to_letters(num-90)
    when 100,200,300,400,500,600,700,800,900 then to_letters(num / 100) + " hundred"
    when 101..999 then to_letters(num / 100) + " hundred and " + to_letters(num % 100)
    when 1000 then "one thousand"
    else ""
    end
  end

end
