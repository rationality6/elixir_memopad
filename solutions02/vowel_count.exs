defmodule VowelCount do
  # @vowels ~w(a i u e o)
  @vowels ["a", "i", "u", "e", "o"]

  def get_count(str) do
    str
    |> String.graphemes()
    |> Enum.count(&(&1 in @vowels))
  end
end

"This is a sigil. You can read about them in the getting started guide"
|> VowelCount.get_count()
|> IO.inspect()
