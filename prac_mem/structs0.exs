defmodule Person do
  defstruct name: "", age: 0, stage: :baby
end

unknown_person = %Person{}

defmodule User do
  defstruct name: "John", age: 27
end

defmodule Main do
  def main do
    john = %User{}
    IO.puts(john.name)
    IO.puts(john.age)
  end
end

Main.main()

defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1
end

defmodule Playground do
  report = %BugReport{owner: %Customer{name: "X", company: "X"}}
  IO.inspect(report)
end
