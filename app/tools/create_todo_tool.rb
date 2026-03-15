class CreateTodoTool < RubyLLM::Tool
  description "Create a new todo item."
  params do
    string :category, required: false
    string :description, required: false
    string :due_date, format: "date"
    string :priority
    string :title
  end

  def execute (category:, description:, due_date:, priority:, title:)
    todo = Todo.create!(category:, description:, due_date:, priority:, title:, status: "pending")

    todo.to_json
  rescue => e
    "Failed to create todo: #{e.message}"
  end
end
