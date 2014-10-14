require 'rspec'
require 'calc/token'

describe Calc::Token do

  it 'should have a Token class to store Value and Category' do
    token = Calc::Token.new(:numeric, 5)
    expect(token.category).to eq(:numeric)
    expect(token.value).to eq(5)
    expect(token.is?(:numeric)).to be_truthy
  end
end