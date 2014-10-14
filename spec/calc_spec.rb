require 'rspec'
require 'calc'

describe Calc do

  it 'should eval 1 + 1 to 2' do
    Calc.eval('1 + 1') == 2
  end
end