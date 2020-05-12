require 'romanos'
require 'spec_helper'
require 'roman_numbers_from_1_to_100'

describe RomanConversor do
  context "calcular" do
    roman_conversor = RomanConversor.new
    roman_numbers_from_1_to_100 = RomanNumbers.get_first_100_numbers
    (0..99).each_with_index { |n|
      test_especification = "Given an input of " + (n + 1).to_s + " the result should be " + roman_numbers_from_1_to_100[n]
      it test_especification do
        expect(roman_conversor.convert(n + 1)).to eq(roman_numbers_from_1_to_100[n])
      end
    }
  end
end