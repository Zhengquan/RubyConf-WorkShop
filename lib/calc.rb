module Calc
  def self.eval(string)
    nums, operations = tokenize(string)
    result = evaluate(nums, operations)
    result
  end

  def self.evaluate(nums, operations)
    result = nums.pop
    until operations.empty?
      result = result.send(operations.pop, nums.pop)
    end
    result
  end

  def self.tokenize(string)
    num_regexp = /\A(\d+(\.\d+)?|\.\d+)\b/
    operation_regexp = /\A(\+|-|\*|\/)/
    operations = []
    nums = []
    input = string.dup
    until input.empty?
      operation = operation_regexp.match(input)
      num = num_regexp.match(input)
      if operation
        operations << operation[0].to_sym
        input = input[operation[0].length..-1]
      end
      if num
        nums << num[0].to_i
        input = input[num[0].length..-1]
      end
    end
    nums.reverse!
    operations.reverse!
    return nums, operations
  end
end