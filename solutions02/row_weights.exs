defmodule RowWeights do
  @moduledoc """
    Several people are standing in a row divided into two teams. The first person goes into team 1, the second goes into team 2, the third goes into team 1, and so on.
  """
  def row_weights(arr) do
    {Enum.sum(홀수들(arr)), Enum.sum(짝수들(arr))}
  end

  def 홀수들(arr), do: arr |> Stream.drop_every(2)
  def 짝수들(arr), do: arr |> Stream.take_every(2)
end

[13, 27, 49]
|> RowWeights.row_weights()
|> IO.inspect(charlists: :as_lists)

[13, 27, 49] |> Enum.take_every(2) |> IO.inspect(charlists: :as_lists)
