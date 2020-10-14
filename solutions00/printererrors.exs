defmodule Printererror do
  def printer_error(s) do
    "#{count_wrong_colours(s)}/#{String.length(s)}"
  end

  def count_wrong_colours(s) do
    s
    |> String.codepoints()
    |> Enum.count(&(&1 > "m"))
  end
end

Printererror.printer_error("abcddddeeeffgzzz")
|> IO.inspect()

"asdfqwer"
|> String.codepoints()
|> Enum.count()
|> IO.inspect()

"asdf"
|> String.split("")
|> IO.inspect()

"asdf"
|> String.codepoints()
|> IO.inspect()

"asdf"
|> String.length()
|> IO.inspect()

1234
|> Integer.digits()
|> IO.inspect()
|> Integer.undigits()
|> IO.inspect()


fun0 = fn (a) -> a > "m" end
"asdf"
|> String.codepoints()
|> IO.inspect()
|> Enum.count(fun0)
|> IO.inspect()
