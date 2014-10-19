module Calc
  def self.eval(string)
    operation_regexp = /(\+|-|\*|\/)/
    operation = operation_regexp.match(string)

    result = 0
    if operation
      nums = string.split(operation[0])
      case operation[0].to_sym
        when :+
          result = nums[0].to_i + nums[1].to_i
        when :-
          result = nums[0].to_i - nums[1].to_i
        when :*
          result = nums[0].to_i * nums[1].to_i
        when :/
          result = nums[0].to_i / nums[1].to_i
      end
    else
      result = string.to_i
    end
    result
  end
end