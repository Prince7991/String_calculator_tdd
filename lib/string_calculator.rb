class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/

    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2..])
      numbers = parts[1]
    end

    numbers = numbers.split(/#{delimiter}/).map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    numbers.sum
  end
end