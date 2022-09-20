require 'todo_list'

RSpec.describe "todo_list method" do
    context "given an empty string" do
        it "fails" do
            expect { todo_list("") }.to raise_error "This is an empty string."
        end
    end

    context "given string with #TODO" do
        it "returns true" do
            result = todo_list("Go food shopping #TODO")
            expect(result).to eq true
        end
    end
    
    context "given string without #TODO" do
        it "returns false" do
            result = todo_list("Take dog for a walk")
            expect(result).to eq false
        end
    end
end