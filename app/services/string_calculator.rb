class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.blank?

    numbers = string_numbers.scan(/-?\d+/).map(&:to_i)
    negatives = numbers.select { |n| n < 0 }

    numbers = numbers.select { |n| n < 1000 }

    unless negatives.empty?
      raise ArgumentError, "negatives not allowed: #{negatives.join(', ')}"
    end

    puts "Input String - #{numbers.inspect}"
    numbers.sum
  end
end
