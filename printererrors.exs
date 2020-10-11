defmodule Printererror do
  def printer_error(s) do
    "#{count_wrong_colours(s)}/#{String.length(s)}"
  end

  def count_wrong_colours(s) do
    s
    |> String.codepoints()
    |> Enum.count(&(&1>"m"))
  end
end

Printererror.printer_error("abcddddeeeffgzzz")
|> IO.inspect()

"asdfqwer"
|> String.codepoints()
|> Enum.count()
|> IO.inspect()
