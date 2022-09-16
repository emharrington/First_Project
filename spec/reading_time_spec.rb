require 'reading_time'

RSpec.describe "calc_reading_time method" do
    context "given an empty string" do
        it "returns 0 mins" do
            result = calc_reading_time("")
            expect(result).to eq 0
        end
    end

    context "given string with under 200 words" do
        it "returns 1 mins" do
            result = calc_reading_time("more than one word")
            expect(result).to eq 1
        end
    end

    context "given string with 200 words" do
        it "returns 1 mins" do
            result = calc_reading_time("word " * 200)
            expect(result).to eq 1
        end
    end

    context "given string with 300 words" do
        it "returns 2 mins" do
            result = calc_reading_time("word " * 300)
            expect(result).to eq 2
        end
    end

    context "given string with 5000 words" do
        it "returns 25 mins" do
            result = calc_reading_time("word " * 5000)
            expect(result).to eq 25
        end
    end
end