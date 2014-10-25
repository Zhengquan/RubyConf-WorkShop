class KataCalc

  def eval(input)
    input.gsub!(/\n/,'+')
    return input.to_i if not input.include?('+')
    input.split('+').map(&:to_i).reduce 0, :+
  end
end
