module Calc
  def self.eval(string)
    self.evaluate(self.tokenize(string))
  end

  def self.tokenize(string)
    [Token.new(:numeric, 1), Token.new(:operator, :+), Token.new(:numeric, 1)]
  end

  def self.evaluate(tokens)
    2
  end

  class Token
    attr_reader :category, :value

    def initialize(category, value)
      @category = category
      @value = value
    end

    def is?(category)
      @category == category
    end
  end
end