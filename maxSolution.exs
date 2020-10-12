defmodule Maxrot do
  def max_rot(num) do
    num
    |> Integer.digits()
    |> do_max_rot
    |> Integer.undigits()
  end
end

38458215
|> Integer.digits()
|> IO.inspect()
