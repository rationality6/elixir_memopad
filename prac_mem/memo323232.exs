defmodule Looping do
  def iteration_for(num) do
    1..num |> Enum.to_list() |> iteration()
  end

  def iteration([]) do
    []
  end

  def iteration([head | tail]) do
    IO.inspect(head)
    iteration(tail)
  end
end

Looping.iteration_for(5)
|> IO.inspect()
