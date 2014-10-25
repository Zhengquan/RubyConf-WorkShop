require 'kata_calc'

describe 'KataCalc' do

  let(:kata) { KataCalc.new }

  it "should get zero if input is empty" do
    result = kata.eval("")
    expect(result).to eq(0);
  end
end
