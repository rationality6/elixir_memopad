defmodule Prime do
  def facto(num) do
    2..num
    |> Enum.filter(fn i -> rem(num, i) == 0 end)
  end
end

32
|> Prime.facto()
|> IO.inspect()

1..8
|> Enum.filter(fn x -> rem(x, 2) == 0 end)
|> IO.inspect()

# %{:a => 1, :b => 2, :c => 3}
# |> IO.inspect()
# |> Enum.filter(fn {k, _v} -> k == :c end)
# |> IO.inspect()
# |> Enum.filter(fn {k, _v} -> k == :c end)
# |> IO.inspect()

# 1..7
# |> Stream.filter(fn x -> rem(x, 2) == 0 end)
# |> IO.inspect()
# |> Enum.to_list()
# |> IO.inspect()
