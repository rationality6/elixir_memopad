defmodule Lotto do
  def r(n \\ 45), do: Enum.random(1..n)

  def 중복없이(acc) do
    current_r = r()

    if current_r not in acc do
      current_r
    else
      중복없이(acc)
    end
  end

  def generate(n), do: generate(n, [])
  def generate(0, acc), do: acc

  def generate(n, acc) do
    generate(n - 1, acc ++ [중복없이(acc)])
    |> Enum.sort()
  end

  def 로또_출력() do
    generate(6)
  end

  def 랜덤_로또_넘버() do
    Enum.to_list(1..45)
    |> Enum.shuffle()
    |> Enum.take(6)
    |> Enum.sort()
  end
end

Lotto.로또_출력() |> IO.inspect()

Lotto.랜덤_로또_넘버() |> IO.inspect()
