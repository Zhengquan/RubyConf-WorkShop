module Calc
  def self.eval(string)
    result = 0
    string.split('+').each { |number| result += number.to_i }
    result
  end
end