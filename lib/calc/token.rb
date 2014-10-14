module Calc
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
