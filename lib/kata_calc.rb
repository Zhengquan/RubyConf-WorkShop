class KataCalc
  DEFAULT_OPERATORS = ["\n", "+"]
  def eval(input)
    raise StandardError if input.end_with?("\n")
    operators = DEFAULT_OPERATORS
    if input.include?("//")
      operators = input[2]
      input = input.split("\n")[-1]
    elsif not input.include?("+")
      return input.to_i
    end
    input.split(/#{operators}/).map(&:to_i).reduce 0, :+
  end
end
