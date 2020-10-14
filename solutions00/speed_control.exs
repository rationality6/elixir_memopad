defmodule Speedcontrol do
  def gps(_s, []), do: 0

  def gps(s, x) do
    x
    |> Enum.map_reduce(0, fn dist, acc -> {calc_speed(dist - acc, s), dist} end)
    |> IO.inspect()
    |> Kernel.elem(0)
    |> Enum.max()
    |> Float.floor()
  end

  def calc_speed(dist, duration), do: dist / duration * 3600
end

second = 15
positions = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]

Speedcontrol.gps(second, positions)
|> IO.inspect()

positions = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]

positions
|> Enum.map_reduce(0, &(&1 + &2))
|> IO.inspect()

l = [1, 2, 3]

l
|> Enum.map_reduce(0, fn x, acc -> {x * 2, x + acc} end)
|> IO.inspect()

l = {[5, 6, 7], 2, 3}

l
|> Kernel.elem(0)
|> IO.inspect()

defmodule Speedcontrol do
  def gps(s, x) do
    func0 = fn dist, acc -> {calculate(dist - acc, s), dist} end
    x
    |> Enum.map_reduce(0, func0)
    |> Kernel.elem(0)
    |> Enum.max()
    |> Float.floor()
  end

  def calculate(dist,duration) do
    dist*3600/duration
  end
end

second = 15
positions = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]

Speedcontrol.gps(second, positions)
|> IO.inspect()


Enum.at({[1,2,3],3},0)
|>IO.inspect()
