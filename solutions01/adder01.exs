defmodule Programmers do
  @moduledoc """
    Simple adder
  """

  defp int(str) do
    Integer.parse(str) |> elem(0)
  end

  @spec solution(charlist()) :: integer()
  def solution(num_string) do
    num_string
    |> String.codepoints()
    |> Enum.reduce(0, fn a, acc -> acc + int(a) end)
  end
end

"123"
|> Programmers.solution()
|> IO.inspect()

# 6

"987"
|> Programmers.solution()
|> IO.inspect()

# 24
