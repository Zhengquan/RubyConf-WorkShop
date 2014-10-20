require 'rspec'
require 'wrong'
require 'calc'

include Wrong
describe 'calc' do

  it 'should eval one number' do
    assert('one digit') { Calc.eval('1') == 1 }
    assert('multiple digits') { Calc.eval('11') == 11 }
  end

  it 'should eval two number with one operation' do
    assert('plus') { Calc.eval('1+1') == 2 }
    assert('minus') {Calc.eval('1-1') == 0 }
    assert('multiple') {Calc.eval('2*2') == 4 }
    assert('divide') {Calc.eval('4/2') == 2 }
  end

  it 'should eval three or more numbers with two operation' do
    assert('without priority') { Calc.eval('1-1+1') == 1 }
    assert('without priority') { Calc.eval('1-1+1+3') == 4 }
  end
end
