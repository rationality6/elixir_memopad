defmodule Foo do
  def my_hof(f) do
    IO.inspect("Here")
    f.([1, 2, 3], &(&1 * 2))
  end
end

Foo.my_hof(&Enum.map/2)
|> IO.inspect()
