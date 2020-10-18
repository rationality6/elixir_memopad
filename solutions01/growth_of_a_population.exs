defmodule Solution do
  def nb_year(population, percent, inhabitants, target) do
    Stream.iterate(population, fn a ->
      a + inhabitants + ((a * (percent / 100)) |> Float.round())
    end)
    |> Enum.find_index(fn a -> a >= target end)
  end

  def nb_year01(p0, percent, aug, p) do
    p0
    |> Stream.iterate(&(trunc(&1 + &1 * (percent / 100) + aug)))
    |> Enum.find_index(&(&1 >= p))
  end

  defp printing(result) do
    "인구수 돌파에 총 #{result}년 이 걸립니다."
  end
end

Solution.nb_year(1000, 2, 50, 1200)
|> IO.inspect()

Float.ceil(35.01)
|> IO.inspect()

Solution.nb_year(1000, 2.0, 50, 1214)
|> IO.inspect()

Solution.nb_year(1_500_000, 0.0, 10000, 2_000_000)
|> IO.inspect()
