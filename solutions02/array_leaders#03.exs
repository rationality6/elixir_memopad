defmodule ArrayLeaders do
  def array_leaders([]), do: []

  def array_leaders([leader | rest]) do
    if leader > Enum.sum(rest) do
      [leader] ++ array_leaders(rest)
    else
      array_leaders(rest)
    end
  end
end

ArrayLeaders.array_leaders([16, 17, 4, 3, 5, 2])
|> IO.inspect()

# {17, 5, 2}
ArrayLeaders.array_leaders([0, -1, -29, 3, 2])
|> IO.inspect()

# {0, -1, 3, 2}
