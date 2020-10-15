defmodule Kata do
  @moduledoc """
  For this Kata you will have to forget how to add two numbers together.

  The best explanation on what to do for this kata is this meme:

  caf

  In simple terms, our method does not like the principle of carrying over numbers and just writes down every number it calculates :-)

  You may assume both integers are positive integers
  """
  defp stack_string([]), do: ""
  defp stack_string([head | tail]), do: "#{head}" <> stack_string(tail)

  defp lists_map_zip_add(r0, r1) do
    Enum.zip(r0, r1)
    |> Enum.map(fn {a, b} -> a + b end)
    |> stack_string()
  end

  defp make_longer(list, 0), do: list
  defp make_longer(list, len), do: make_longer([0] ++ list, len - 1)

  def add(a, b) do
    # TODO: working solution
    a_digits = a |> Integer.digits()
    a_count = a_digits |> Enum.count()
    b_digits = b |> Integer.digits()
    b_count = b_digits |> Enum.count()

    a_digits =
      if(a_count < b_count) do
        make_longer(a_digits, b_count - a_count)
      else
        a_digits
      end

    b_digits =
      if(a_count > b_count) do
        make_longer(b_digits, a_count - b_count)
      else
        b_digits
      end

    lists_map_zip_add(a_digits, b_digits)
    |> Integer.parse()
    |> elem(0)
  end
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
