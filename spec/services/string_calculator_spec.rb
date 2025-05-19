
require 'rails_helper'

RSpec.describe StringCalculator do
  describe 'add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself for single number' do
      number = rand(1..100)
      puts "Input number - #{number}"
      expect(StringCalculator.add(number.to_s)).to eq(number)
    end

    it 'returns sum for two random numbers' do
      num1 = rand(1..100)
      num2 = rand(1..100)
      input = "#{num1},#{num2}"
      puts "Input number1 - #{num1}"
      puts "Input number2 - #{num2}"
      puts "Input String - #{input.inspect}"
      expect(StringCalculator.add(input)).to eq(num1 + num2)
    end

    it 'returns sum for "N" numbet of random numbers' do
      numbers = Array.new(10) { rand(1..100) }
      input = numbers.join(",")
      puts "Input numbers - #{numbers}"
      puts "Input String - #{input.inspect}"
      expect(StringCalculator.add(input)).to eq(numbers.sum)
    end
  end
end
