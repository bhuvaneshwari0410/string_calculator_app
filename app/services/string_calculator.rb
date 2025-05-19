class StringCalculator
  def self.add(string_numbers)
    return 0 if string_numbers.blank?

    string_numbers.scan(/\d+/).map(&:to_i).sum
  end
end
