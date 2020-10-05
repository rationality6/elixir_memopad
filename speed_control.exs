defmodule SpeedControl do
  def gps(s, x) do
    [head | [tail | tails]] = x
    IO.inspect(head)
    IO.inspect(tail)
    IO.inspect(tails)
    gps(s, tails)
    # (head - tail)
  end

  def gps(s, []) do
    0
  end
end

second = 15
positions = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]

SpeedControl.gps(second, positions)
|> IO.inspect()
