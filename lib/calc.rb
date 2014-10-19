module Calc
  def self.eval(string)
    operation_regexp = /(\+|-|\*|\/)/
    operation = operation_regexp.match(string)

    if operation
      nums = string.split(operation[0])
      result = nums[0].to_i.send(operation[0].to_sym,nums[1].to_i)
    else
      result = string.to_i
    end
    result
  end
end