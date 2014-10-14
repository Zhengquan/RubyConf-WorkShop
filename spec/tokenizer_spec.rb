require 'rspec'
require 'calc/tokenizer'

describe Calc::Tokenizer do

  it 'should tokenize strings to tokens' do
    Calc::Tokenizer.tokenize('1+1') == [Calc::Token.new(:numeric,1),Calc::Token.new(:operator,:+),Calc::Token.new(:numeric,1)]
  end
end