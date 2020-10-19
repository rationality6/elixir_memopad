defmodule Anagram do
  def generalize(str) do
    str
    |> String.downcase()
    |> String.to_char_list()
    |> Enum.sort()
  end

  def anagram?(a, b) do
    # Write your code
    generalize(a) == generalize(b)
  end
end

"foefet"
|> Anagram.anagram?("toffee")
|> IO.inspect()

"Buckethead"
|> Anagram.anagram?("DeathCubeK")
|> IO.inspect()
