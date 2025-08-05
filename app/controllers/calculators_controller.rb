class CalculatorsController < ApplicationController
  def add(numbers)
	return 0 if numbers.empty?
    delimiters = [",", "\n"]
    parts = numbers.split(Regexp.union(delimiters))
    nums = parts.map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?

    nums.sum
  end
end
