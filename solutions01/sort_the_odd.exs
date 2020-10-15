defmodule Kata do
  import Integer, only: [is_odd: 1]

  def sort_the_odd(ls) do
    # TODO: working solution
    odds =
      ls
      |> Enum.filter(&is_odd(&1))
      |> Enum.sort()

    {sorted, []} =
      Enum.map_reduce(ls, odds, fn
        i, a when is_odd(i) ->
          [i | a] = a
          {i, a}

        i, a ->
          {i, a}
      end)

    IO.inspect(sorted)
  end
end

[1, 2, 3, 4, 5]
|> Kata.sort_the_odd()
|> IO.inspect()
