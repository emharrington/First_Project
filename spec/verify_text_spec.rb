require 'verify_text'

RSpec.describe "verify_text method" do
    context "given an empty string" do
        it "fails" do
            expect { verify_text("") }.to raise_error "That's not a sentence."
        end 
    end

    context "given text with capital letter at start & exclamation mark at end" do
        it "returns true" do
            result = verify_text("Hello world!")
            expect(result).to eq true
        end
    end

    context "given text with no capital letter" do
        it "returns false" do
            result = verify_text("hello world!")
            expect(result).to eq false
        end
    end

    context "given text with no punctuation" do
        it "returns false" do
            result = verify_text("Hello world")
            expect(result).to eq false
        end
    end

    context "given text with no capital letter or punctuation" do
        it "returns false" do
            result = verify_text("hello world")
            expect(result).to eq false
        end
    end

    context "given text with capital letter at start & full stop at end" do
        it "returns true" do
            result = verify_text("Hello world.")
            expect(result).to eq true
        end
    end

    context "given text with capital letter at start & question mark at end" do
        it "returns true" do
            result = verify_text("Hello world?")
            expect(result).to eq true
        end
    end
end