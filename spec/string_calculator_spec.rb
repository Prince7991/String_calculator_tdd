require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
	describe "#add" do
    context "when the input is an empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "when the input is a single number" do
      it "returns the number itself" do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context "when the input contains two numbers" do
      it "returns the sum of the two numbers" do
        expect(StringCalculator.add("1,2")).to eq(3)
      end
    end

  end
end