def todo_list(task)
    fail "This is an empty string." if task.empty?
    if task.include? "#TODO"
        return true
    else
        return false
    end
end