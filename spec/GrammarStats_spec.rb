require 'GrammarStats'

RSpec.describe GrammarStats do
    describe "#check" do
        context "given an empty string" do
            it "fails" do
                grammar_stats = GrammarStats.new
                expect { grammar_stats.check("") }.to raise_error "That's not a sentence."
            end 
        end
    
        context "given text with capital letter at start & exclamation mark at end" do
            it "returns true" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("Hello world!")).to eq true
            end
        end
    
        context "given text with no capital letter" do
            it "returns false" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("hello world!")).to eq false
            end
        end
    
        context "given text with no punctuation" do
            it "returns false" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("Hello world")).to eq false
            end
        end
    
        context "given text with no capital letter or punctuation" do
            it "returns false" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("hello world")).to eq false
            end
        end
    
        context "given text with capital letter at start & full stop at end" do
            it "returns true" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("Hello world.")).to eq true
            end
        end
    
        context "given text with capital letter at start & question mark at end" do
            it "returns true" do
                grammar_stats = GrammarStats.new
                expect(grammar_stats.check("Hello world?")).to eq true
            end
        end
    end
    
    describe "#percentage_good" do
        context "given only good strings" do
            it "returns 100" do
                grammar_stats = GrammarStats.new
                grammar_stats.check("Hello world.")
                grammar_stats.check("Hello world.")
                expect(grammar_stats.percentage_good).to eq 100
            end
        end

        context "given one good string and one bad string" do
            it "returns 50" do
                grammar_stats = GrammarStats.new
                grammar_stats.check("Hello world.")
                grammar_stats.check("hello world")
                expect(grammar_stats.percentage_good).to eq 50
            end
        end

        context "given only bad strings" do
            it "returns 0" do
                grammar_stats = GrammarStats.new
                grammar_stats.check("Hello world,")
                grammar_stats.check("hello world")
                expect(grammar_stats.percentage_good).to eq 0
            end
        end
    end
end