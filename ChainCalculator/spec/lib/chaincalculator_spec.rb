require "spec_helper"
require "chain_calculator"


describe ChainCalculator do
    before(:each) do
        @calculator = ChainCalculator.new
    end
    it "give us 1 if the input is 1" do
        result = @calculator.calculate "1"
        expect(result).to eq(1)
    end

    it "give us 2 if the input is 2" do
        result = @calculator.calculate "2"
        expect(result).to eq(2)
    end

    it "give us 3 if the input is '1 + 2'" do
	    result = @calculator.calculate "1 + 2"
        expect(result).to eq(3)
    end

    it "give us 6 if the input is '5 + 1'" do 
        result = @calculator.calculate "5 + 1"
        expect(result).to eq(6)
    end

    it "give us 7 if the input is '7 * 1'" do
        result = @calculator.calculate "7 * 1"
        expect(result).to eq(7)
    end

    it "give us 106 if the input is '53 * 2'" do
        result = @calculator.calculate "53 * 2"
        expect(result).to eq(106)
    end

    it "give us 72 if the input is '9 * 8'" do
        result = @calculator.calculate "9 * 8"
        expect(result).to eq(72)
    end

    it "give us 6 if the input is '18 / 3'" do
        result = @calculator.calculate "18 / 3"
        expect(result).to eq(6)
    end
    it "give us 8 if the input is '72 / 9'" do
        result = @calculator.calculate "72 / 9"
        expect(result).to eq(8)
    end

    it "give us 2 if the input is '8 - 6'" do
        result = @calculator.calculate "8 - 6"
        expect(result).to eq(2)
    end

    it "give us 6 if the input is '13 - 7'" do
        result = @calculator.calculate "13 - 7"
        expect(result).to eq(6)
    end

    it "give us 4 if the input is '13 - 7 - 2'" do
        result = @calculator.calculate "13 - 7 - 2"
        expect(result).to eq(4)
    end

    it "give us 7 if the input is '13 - 7'" do
        result = @calculator.calculate "13 - 7 + 1"
        expect(result).to eq(7)
    end

    it "give us 6 if the input is '10 + 4 - 7'" do
        result = @calculator.calculate "10 + 4 - 7"
        expect(result).to eq(7)
    end
    it "give us 6 if the input is '13 * 2 + 7'" do
        result = @calculator.calculate "13 * 2 + 7"
        expect(result).to eq(33)
    end
end
