class Solver
  def factorial(num)
    raise StandardError, 'This method only accepts 0 and positive integers' if num.negative?

    result = 1

    while num.positive?
      result *= num
      num -= 1
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    is_divisible_by_3 = num.modulo(3).zero?
    is_divisible_by_5 = num.modulo(5).zero?
    is_divisible_by_3_and_5 = is_divisible_by_3 && is_divisible_by_5

    if is_divisible_by_3_and_5
      'fizzbuzz'
    elsif is_divisible_by_5
      'buzz'
    elsif is_divisible_by_3
      'fizz'
    else
      num.to_s
    end
  end
end
