class KataCalc

  def eval(input)
    return input.to_i if not input.include?('+')
    left,right = input.split('+').map(&:to_i)
    left + right
  end
end
