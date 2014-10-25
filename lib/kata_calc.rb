class KataCalc
  def eval(input)
    raise StandardError if input.end_with?("\n")
    input.gsub!(/\n/,'+')
    return input.to_i if not input.include?('+')
    input.split('+').map(&:to_i).reduce 0, :+
  end
end
