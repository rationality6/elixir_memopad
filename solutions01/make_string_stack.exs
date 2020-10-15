defmodule Foo do
  def stack_string([]) do
    ""
  end

  def stack_string([head | tail]) do
    IO.inspect(head)
    "#{head}" <> stack_string(tail)
  end
end

[3, 9, 3]
|> Foo.stack_string()
|> IO.inspect()
