
defmodule Cal do
  @spec max_possple_number_list(list(integer)) :: integer()
  def max_possple_number_list(list) do
    list
    |> Enum.sort()
    |> Enum.reverse()
    |> Enum.join()
    |> Integer.parse()
    |> elem(0)
  end

  @spec max_possple_number_integer(integer()) :: integer()
  def max_possple_number_integer(num) do
    num
    |> Integer.digits()
    |> max_possple_number_list()
  end
end

[5, 3, 1, 2, 3]
|> Cal.max_possple_number_list()
|> IO.inspect()

382_938
|> Cal.max_possple_number_integer()
|> IO.inspect()
