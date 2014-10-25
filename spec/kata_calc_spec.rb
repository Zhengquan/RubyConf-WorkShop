require 'kata_calc'

describe 'KataCalc' do

  let(:kata) { KataCalc.new }

  it "should get zero if input is empty" do
    result = kata.eval("")
    expect(result).to eq(0);
  end

  it "should get same number if input only has one number" do
    result = kata.eval("1")
    expect(result).to eq(1);
  end
end
