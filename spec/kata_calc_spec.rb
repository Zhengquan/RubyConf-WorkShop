require 'kata_calc'

describe KataCalc do

  let(:kata) { KataCalc.new }

  describe "#eval" do
    it "should get zero if input is empty" do
      result = kata.eval("")
      expect(result).to eq(0);
    end

    it "should get same number if input only has one number" do
      result = kata.eval("1")
      expect(result).to eq(1);
    end

    context "when given two numbers" do
      it "should sum two number if input has two numbers" do
        result = kata.eval("1+1")
        expect(result).to eq(2);
      end
    end

    context "when given numerous numbers" do
      it "should sum all" do
        result = kata.eval("1+1+1")
        expect(result).to eq(3);
      end
    end

    context "when input contains line break" do
      it "should take linke break as add operator " do
        result = kata.eval("1\n1+1")
        expect(result).to eq(3);
      end
    end
  end
end
