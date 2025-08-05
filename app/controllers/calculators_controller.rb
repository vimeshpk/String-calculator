class CalculatorsController < ApplicationController
  def add(numbers)
    return 0 if numbers.empty?

    delimiters = [",", "\n"]
    if numbers.start_with?("//")
      delimiter_part, numbers = numbers.split("\n", 2)
      custom_delimiters = delimiter_part[2..-1]

      if custom_delimiters.start_with?("[")
        delimiters += custom_delimiters.scan(/\[(.*?)\]/).flatten
      else
        delimiters << custom_delimiters
      end
    end

    parts = numbers.split(Regexp.union(delimiters))
    nums = parts.map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?

    nums.reject { |n| n > 1000 }.sum
  end
end
