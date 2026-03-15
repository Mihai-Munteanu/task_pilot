class ListTodosTool < RubyLLM::Tool
  description "List the users to do"

  def execute
    Todo.all.as_json
  end
end
