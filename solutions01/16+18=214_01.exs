defmodule Kata do
  @moduledoc """
  For this Kata you will have to forget how to add two numbers together.

  The best explanation on what to do for this kata is this meme:

  caf

  In simple terms, our method does not like the principle of carrying over numbers and just writes down every number it calculates :-)

  You may assume both integers are positive integers
  """
  defp helper(0, 0), do: ""

  defp helper(a, b) do
    "#{helper(div(a, 10), div(b, 10))}#{rem(a, 10) + rem(b, 10)}"
  end

  def add(0, 0), do: 0
  def add(a, b), do: helper(a, b) |> String.to_integer()
end

Kata.add(16, 18)
|> IO.inspect()

# 214

Kata.add(248, 208)
|> IO.inspect()

# 4416

Kata.add(122, 81)
|> IO.inspect()

# 1103

Kata.add(33, 181)
|> IO.inspect()

# 1111
