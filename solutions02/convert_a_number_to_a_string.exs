defmodule Stringify do
  def number_to_string(n) do
    n |> Kernel.to_string()
  end
end

123
|>Stringify.number_to_string()
|> IO.inspect()
