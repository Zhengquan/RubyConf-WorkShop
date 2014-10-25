class KataCalc
  def eval(input)
    raise StandardError if input.end_with?("\n")
    return input.to_i if not input.include?('+')
    input.split(/[\n\+]/).map(&:to_i).reduce 0, :+
  end
end
