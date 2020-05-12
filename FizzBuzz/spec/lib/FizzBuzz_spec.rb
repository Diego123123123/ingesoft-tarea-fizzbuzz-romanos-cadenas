require "spec_helper"
require "FizzBuzz"

describe FizzBuzz do
  it "is returns 1 when the input is 1" do
    fizzbuzz = FizzBuzz.new
    result = fizzbuzz.calculate 1
    expect(result).to eq("1")
  end
  it "is returns Fizz when the input is 3" do
    fizzbuzz = FizzBuzz.new
    result = fizzbuzz.calculate 3
    expect(result).to eq("Fizz")
  end
  it "is returns Buzz when the input is 5" do
    fizzbuzz = FizzBuzz.new
    result = fizzbuzz.calculate 5
    expect(result).to eq("Buzz")
  end
  it "is returns FizzBuzz when the input is 5" do
    fizzbuzz = FizzBuzz.new
    result = fizzbuzz.calculate 15
    expect(result).to eq("FizzBuzz")
  end
end
