defmodule Kata do
  @moduledoc """
  Trolls are attacking your comment section!

  A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

  Your task is to write a function that takes a string and return a new string with all vowels removed.

  For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

  Note: for this kata y isn't considered a vowel.
  """
  @spec disemvowel(charlist()) :: charlist()
  def disemvowel(s) do
    # TODO: working solution
    s
    |> String.replace(~r/[aeiou]/i, "")
  end
end

"This website is for losers LOL!"
|> Kata.disemvowel()
|> IO.inspect()

# "Ths wbst s fr lsrs LL!"

"aeiouAEIOU"
