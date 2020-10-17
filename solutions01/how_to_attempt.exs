defmodule Spa do
  def solution(str) do
    str
      |> String.codepoints()
      |> Enum.reduce(%{}, fn char, acc ->
        Map.update(acc, char, 1, fn existing_value -> existing_value + 1 end)
      end)
      |>Enum.reduce("", fn {k, x}, acc ->
        acc <> "#{k}#{x}"
      end)
  end
end

"babdc"
|> Spa.solution()
|> IO.inspect()

"ccddabdz"
|> Spa.solution()
|> IO.inspect()

Map.put(%{a:1},:b,2)

map = %{a: 1}
fun = fn -> 13 end
Map.pop_lazy(map,:a,fun)

list = [1,2,3,4]
map = %{}
Enum.reduce(list,map,fn char, acc -> IO.inspect(acc) end)

map = %{}
map = Map.update(map, :a, 13, fn ev -> ev + 1 end)
map = Map.update(map, :a, 13, fn ev -> ev + 1 end)
IO.inspect(map)
