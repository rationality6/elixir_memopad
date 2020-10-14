defmodule Maxrot do
  def max_rot(num) do
    num
    |> Integer.digits()
    |> do_max_rot()
    |> Integer.undigits()
  end

  defp do_max_rot([_] = ds) do
    ds
  end

  defp do_max_rot([digit, head | tail] = num_arr) do
    max_arr = [head | do_max_rot(tail ++ [digit])]
    IO.inspect(max_arr)
    IO.inspect(num_arr)
    max(num_arr, max_arr)
  end

  # max(ds, [y | do_max_rot(ys ++ [x])])
end

384_587
|> Maxrot.max_rot()
|> IO.inspect()

384_587
|> IO.inspect()
|> Integer.digits()
|> IO.inspect()
|> Integer.undigits()
|> IO.inspect()

[6, 1, 2, 3, 4, 99]
|> Enum.max()
|> IO.inspect()

Enum.max([9, 3, 2], [4])
|> IO.inspect()

([6, 2, 3, 4, 9] < [3, 2])
|> IO.inspect()

ds = Integer.digits(384_587)
[x, y | ys] = ds
IO.inspect(x)
IO.inspect(y)
IO.inspect(ys)

Kernel.max([9, 3, 2, 98_329_238], [99, 3])
|> IO.inspect()
