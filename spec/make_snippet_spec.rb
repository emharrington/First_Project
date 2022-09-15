require 'make_snippet'

RSpec.describe "make_snippet method" do
    context "given an empty string" do
        it "returns an empty string" do
            result = make_snippet("")
            expect(result).to eq ""
        end
    end

    context "given a string of four words" do
        it "returns that string" do
            result = make_snippet("this is four words")
            expect(result).to eq "this is four words"
        end
    end

    context "given a string of five words or more" do
        it "returns that string and ..." do
            result = make_snippet("now this is five words" + "...")
            expect(result).to eq "now this is five words..."
        end
    end
end