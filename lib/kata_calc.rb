class KataCalc

  def eval(input)
    return input.to_i if not input.include?('+')
    input.split('+').map(&:to_i).reduce 0, :+
  end
end
