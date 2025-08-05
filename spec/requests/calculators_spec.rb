require 'rails_helper'
require 'pry'

RSpec.describe "Calculators" do
  describe CalculatorsController do
    let(:calculator) { CalculatorsController.new }
    it "returns 0 for empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns sum for comma separated numbers" do
      expect(calculator.add("1,2")).to eq(3)
    end

    it "supports newlines as delimiters" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
