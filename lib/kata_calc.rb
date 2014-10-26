class KataCalc
  def eval(input)
    raise StandardError if input.end_with?("\n")
    if input.include?("//")
      number_expr = input.split("\n")[-1]
      return number_expr.split(input[2]).map(&:to_i).reduce 0, :+
    end
    return input.to_i if not input.include?('+')
    input.split(/[\n\+]/).map(&:to_i).reduce 0, :+
  end
end
