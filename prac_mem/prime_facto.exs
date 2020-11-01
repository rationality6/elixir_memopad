defmodule PrimeFactors do
  def 소인수분해_시작(수) do
    소인수분해(수, 2, [])
  end

  def 소인수분해(수, 소인수, 소인수들) when 수 < 소인수 do
    소인수들
  end

  def 소인수분해(수, 소인수, 소인수들) when rem(수, 소인수) == 0 do
    [소인수 | 소인수분해(div(수, 소인수), 소인수, 소인수들)]
  end

  def 소인수분해(수, 소인수, 소인수들) do
    소인수분해(수, 소인수 + 1, 소인수들)
  end
end

PrimeFactors.소인수분해_시작(63) |> IO.inspect(charlists: :as_list)
PrimeFactors.소인수분해_시작(7) |> IO.inspect(charlists: :as_list)
