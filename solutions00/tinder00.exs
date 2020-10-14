defmodule Match do
  def match(:like, :like), do: "Yey, you found a match"
  def match(:like, :dislike), do: "Please give up"
  def match(:dislike, _), do: "Passed"

  def match(val) do
    case {val.me, val.target} do
      {:like, :like} -> "Yey, you found a match?"
      {:like, :dislike} -> "Please give up?"
      {:dislike, _} -> "Passed?"
    end
  end
end

result0 = %{:me => :like, :target => :like}
result1 = %{:me => :dislike, :target => :like}
result2 = %{:me => :like, :target => :dislike}
result3 = %{:me => :dislike, :target => :dislike}

IO.inspect(Match.match(result0))
IO.inspect(Match.match(result1))
IO.inspect(Match.match(result2))
IO.inspect(Match.match(result3))

IO.inspect(Match.match(result0.me, result0.target))
IO.inspect(Match.match(result1.me, result1.target))
IO.inspect(Match.match(result2.me, result2.target))
IO.inspect(Match.match(result3.me, result3.target))
