require 'calc/token'
require 'calc/tokenizer'
require 'calc/evaluator'
module Calc
  def self.eval(string)
    Evaluator.evaluate(Tokenizer.tokenize(string))
  end
end