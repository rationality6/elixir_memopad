defmodule TalantDetector do
  def 반환_소문자_첫글자(name) do
    name |> String.downcase() |> String.codepoints() |> Kernel.hd()
  end

  def are_you_playing_banjo?(name) do
    case 반환_소문자_첫글자(name) do
      "r" -> "#{name} plays banjo"
      _ -> "#{name} does not play banjo"
    end
  end
end

"Martin"
|> TalantDetector.are_you_playing_banjo?()
|> IO.inspect()

"Rikke"
|> TalantDetector.are_you_playing_banjo?()
|> IO.inspect()
