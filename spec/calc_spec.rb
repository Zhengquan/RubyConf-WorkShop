require 'rspec'
require 'calc'

describe 'calc' do

  it 'should eval 1 + 1 to 2' do
    Calc.eval('1 + 1') == 2
  end

  it 'should have a Token class to store Value and Category' do
    token = Calc::Token.new(:numeric, 5)
    expect(token.category).to eq(:numeric)
    expect(token.value).to eq(5)
    expect(token.is?(:numeric)).to be_truthy
  end

  it 'should tokenize strings to tokens' do
    Calc.tokenize('1+1') == [Calc::Token.new(:numeric,1),Calc::Token.new(:operator,:+),Calc::Token.new(:numeric,1)]
  end

  it 'should evaluate tokens to result' do
    Calc.evaluate([Calc::Token.new(:numeric,1),Calc::Token.new(:operator,:+),Calc::Token.new(:numeric,1)]) == 2
  end
end