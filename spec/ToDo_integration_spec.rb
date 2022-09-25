require 'ToDoList'
require 'ToDo'

RSpec.describe "integration" do
    it "adds tasks" do
        todo_list = TodoList.new
        expect(todo_list.add("task_1")).to eq ["task_1"]
    end

    describe "#incomplete" do
        it "returns incomplete tasks" do
            todo_list = TodoList.new
            task_1 = todo_list.add("task_1")
            task_2 = todo_list.add("task_2 is complete")
            expect(todo_list.incomplete).to eq ["task_1"]
        end
    end

    describe "#complete" do
        it "returns iomplete tasks" do
            todo_list = TodoList.new
            task_1 = todo_list.add("task_1")
            task_2 = todo_list.add("task_2 is complete")
            expect(todo_list.complete).to eq ["task_2 is complete"]
        end
    end

    describe "#give_up!" do
        it "returns all tasks as complete" do
            todo_list = TodoList.new
            task_1 = todo_list.add("task_1")
            task_2 = todo_list.add("task_2 is complete")
            expect(todo_list.give_up!).to eq ["task_1 is complete", "task_2 is complete"]
        end
    end

    describe "#task" do
        it "returns task as a string" do
            todo = Todo.new("task_1")
            expect(todo.task).to eq "task_1"
        end
    end

    describe "#mark_done!" do
        it "marks task as done" do
            todo = Todo.new("task_1")
            expect(todo.mark_done!).to eq "task_1 is done"
        end
    end

    describe "#done?" do
        it "returns true if task is done" do
            todo = Todo.new("task_1 is done")
            expect(todo.done?).to eq true
        end

        it "returns false if task is not done" do
            todo = Todo.new("task_1")
            expect(todo.done?).to eq false
        end
    end
end

=begin
    1 - add tasks to array (ToDoList) ✓

    2 - return all incomplete tasks (ToDoList) ✓

    3 - return all complete tasks (ToDoList) ✓

    4 - mark all tasks as complete (ToDoList) ✓

    5 - return task as a string (ToDo) ✓

    6 - mark task as done, mark_done! (ToDo) ✓

    7 - return true if task is done (ToDo) ✓

    8 - otherwise return false (ToDo) ✓
=end