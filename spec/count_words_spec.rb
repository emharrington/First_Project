require 'count_words'

RSpec.describe "count_words method" do
    context "given a string" do
        it "returns the number of words in that string" do
            result = count_words("hello world")
            expect(result).to eq 2
        end
    end
end