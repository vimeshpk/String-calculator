class CalculatorsController < ApplicationController
	def add(numbers)
	  return 0 if numbers.empty?
      delimiters = [",", "\n"]

      parts = numbers.split(Regexp.union(delimiters))
      parts.map(&:to_i).sum
	end
end
