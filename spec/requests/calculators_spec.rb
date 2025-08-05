require 'rails_helper'
require 'pry'

RSpec.describe "Calculators" do
  describe CalculatorsController do
    let(:calculator) { CalculatorsController.new }
    it "returns 0 for empty string" do
      expect(calculator.add("")).to eq(0)
    end
  end
end
