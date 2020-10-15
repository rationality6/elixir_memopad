defmodule Kata do
  def make_longer(list, 0) do
    list
  end

  def make_longer(list, len) do
    make_longer([0] ++ list, len - 1)
  end
end

list0 = [1, 2, 3]
more_length = 3

Kata.make_longer(list0, more_length)
|> IO.inspect()
