require 'tasks'

RSpec.describe Tasks do
    describe "#todo" do
        context "given an empty string" do
            it "fails" do
                tasks = Tasks.new
                expect { tasks.todo("") }.to raise_error "Please input a task."
            end
        end

        context "one task is input" do
            it "returns the task" do
                tasks = Tasks.new
                expect(tasks.todo("task 1")).to eq ["task 1"]
            end
        end

        context "more than one task is input" do
            it "returns list of tasks" do
                tasks = Tasks.new
                tasks.todo("task 1")
                tasks.todo("task 2")
                expect(tasks.todo_list).to eq ["task 1", "task 2"]
            end
        end
    end

    describe "#completed_tasks" do
        context "when we complete a task" do
            it "remove from list" do
                tasks = Tasks.new
                tasks.todo("task 1")
                tasks.todo("task 2")
                tasks.completed_tasks("task 1")
                expect(tasks.todo_list).to eq ["task 2"]
            end
        end

        context "when we try to complete a non-existent task" do
            it "fails" do
                tasks = Tasks.new
                tasks.todo("task 1")
                expect { tasks.completed_tasks("task 2") }.to raise_error "This task doesn't exist."
            end
        end
    end
end