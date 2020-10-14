defmodule Cases do
  def case_ex(tuple0) do
    case tuple0 do
      {4, 5, 6} ->
        "This clause won't match"

      {1, x, 3} ->
        IO.inspect(x)
        "This clause will match and bind x to 2 in this clause"

      _ ->
        "This clause would match any value"
    end
  end

  def cond_ex() do
    cond do
      2 + 2 == 5 ->
        "This will not be true"

      2 * 2 == 3 ->
        "Nor this"

      1 + 1 == 2 ->
        "But this will"
    end
  end
end

Cases.case_ex({1, 2, 3})

Cases.cond_ex()
|> IO.inspect()
