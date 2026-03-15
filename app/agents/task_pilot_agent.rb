class TaskPilotAgent < RubyLLM::Agent
  chat_model Chat
  instructions
  tools WeatherTool, ListTodosTool, CreateTodoTool, CompleteTodoTool
end