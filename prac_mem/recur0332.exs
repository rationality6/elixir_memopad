defmodule Recur do
  def 계승_기본(1), do: 1

  def 계승_기본(수) do
    수 * 계승_기본(수 - 1)
  end

  def 계승_꼬리_시작(수) do
    계승_꼬리(수, 1)
  end

  def 계승_꼬리(0, 축적), do: 축적

  def 계승_꼬리(수, 축적) do
    계승_꼬리(수 - 1, 축적 * 수)
  end

  def 피보_기본(0), do: 0
  def 피보_기본(1), do: 1

  def 피보_기본(수) do
    피보_기본(수 - 1) + 피보_기본(수 - 2)
  end

  def 피보_테일_시작(수), do: 피보_테일(1, 1, 수)

  def 피보_테일(a, _, 0) do
    a
  end

  def 피보_테일(a, b, 수) do
    피보_테일(b, a + b, 수 - 1)
  end

  def 피보_테일_리스트_시작(수) do
    시작 = [1, 1]
    피보_테일_리스트(시작, 수)
  end

  def 피보_테일_리스트(리스트, 2) do
    Enum.reverse(리스트)
  end

  def 피보_테일_리스트(리스트, 수) do
    b = 리스트 |> tl() |> hd()
    피보_테일_리스트([hd(리스트) + b] ++ 리스트, 수 - 1)
  end
end

# Recur.계승_기본(5) |> IO.inspect()
# Recur.계승_꼬리_시작(5) |> IO.inspect()
# Recur.피보_기본(10) |> IO.inspect()
# Recur.피보_테일_시작(10) |> IO.inspect()

# 1 1 2 3 5 8 13 21 34 55 89

# Recur.피보_테일_시작(100000) |> IO.inspect()

Recur.피보_테일_리스트_시작(10) |> IO.inspect()
