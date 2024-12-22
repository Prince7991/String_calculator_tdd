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

    context "when the input contains multiple numbers" do
      it "returns the sum of all numbers" do
        expect(StringCalculator.add("1,2,3,4")).to eq(10)
      end
    end

    context "when the input contains new lines between numbers" do
      it "handles new lines as delimiters" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context "when a custom delimiter is provided" do
      it "supports different delimiters" do
        expect(StringCalculator.add("//;\n1;2")) .to eq(3)
      end

      it "supports another delimiter example" do
        expect(StringCalculator.add("//*\n4*5*6")) .to eq(15)
      end
    end

    context "when a negative number is provided" do
      it "raises an exception with the negative number" do
        expect { StringCalculator.add("-1,2") }.to raise_error("negative numbers not allowed: -1")
      end

      it "raises an exception for multiple negative numbers" do
        expect { StringCalculator.add("-1,-2,3") }.to raise_error("negative numbers not allowed: -1, -2")
      end
    end
  end
end