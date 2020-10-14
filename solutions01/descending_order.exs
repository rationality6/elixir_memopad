defmodule Kata do
  @moduledoc """
  Your task is to make a function that can take any
  non-negative integer as an argument and return it
  with its digits in descending order. Essentially,
  rearrange the digits to create the highest possible number.
  """
  def descending_order(n) do
    # TODO: working solution
    n
    |> Integer.digits()
    |> Enum.sort(&(&1 > &2))
    |> Integer.undigits()
  end

  def descending_order01(n) do
    n
    |> Integer.digits
    |> Enum.sort
    |> Enum.reverse
    |> Integer.undigits
  end
end

123_456_789
|> Kata.descending_order()
|> IO.inspect()

567821
|> Kata.descending_order01()
|> IO.inspect()
