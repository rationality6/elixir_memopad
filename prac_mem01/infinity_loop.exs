defmodule Foobar do
  def while(1) do
    IO.puts("hello")
  end

  def while(x) do
    IO.puts("hello")
    while(x - 1)
  end
end

Foobar.while(0)
