require 'rspec'
require 'calc/evaluator'

describe Calc::Evaluator do

  it 'should evaluate tokens to result' do
    Calc::Evaluator.evaluate([Calc::Token.new(:numeric,1),Calc::Token.new(:operator,:+),Calc::Token.new(:numeric,1)]) == 2
  end
end