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
  end
end
