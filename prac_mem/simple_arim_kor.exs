defmodule Arim do
  def 일_더하기(수), do: 수 + 1
  def 일_빼기(수), do: 수 - 1
  def 두배로_곱하기(수), do: 수 * 2
  def 반으로_나누기(수), do: 수 / 2
  def 수_더하기(수0, 수1), do: 수0 + 수1
  def 수_빼기(수0, 수1), do: 수0 - 수1
  def 수_곱하기(수0, 수1), do: 수0 * 수1
  def 수_나누기(수0, 수1), do: 수0 / 수1
end

Arim.일_더하기(5) |> IO.inspect()
Arim.일_빼기(5) |> IO.inspect()
Arim.두배로_곱하기(5) |> IO.inspect()
Arim.반으로_나누기(5) |> IO.inspect()
Arim.수_더하기(4, 8) |> IO.inspect()
Arim.수_빼기(4, 8) |> IO.inspect()
Arim.수_곱하기(4, 8) |> IO.inspect()
Arim.수_나누기(4, 8) |> IO.inspect()
