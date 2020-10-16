defmodule FixStringCase do
  @moduledoc """
  In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:

  make as few changes as possible.
  if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
  """
  def solve(s) do
    count = s
      |> String.codepoints()
      |> Enum.count(&(&1 > <<90>>))

    if String.length(s) - count <= count do
      String.downcase(s)
    else
      String.upcase(s)
    end
  end
end

"coDe"
|> FixStringCase.solve()
|> IO.inspect()

"CODe"
|> FixStringCase.solve()
|> IO.inspect()

"wefew"
|> String.length()
|> IO.inspect()
