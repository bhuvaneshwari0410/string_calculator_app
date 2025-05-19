
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
  end
end