defmodule PrimeFactors do
  @doc """
  Compute the prime factors for 'number'.
  The prime factors are prime numbers that when multiplied give the desired
  number.
  The prime factors of 'number' will be ordered lowest to highest.
  """
  @spec factors_for(pos_integer) :: [pos_integer]
  def factors_for(number) do
    factorize(number, 2, [])
  end

  defp factorize(number, factor, prime_factors) when number < factor do
    prime_factors
  end

  defp factorize(number, factor, prime_factors) when rem(number, factor) == 0 do
    [factor | factorize(div(number, factor), factor, prime_factors)]
  end

  defp factorize(number, factor, prime_factors) do
    factorize(number, factor + 1, prime_factors)
  end
end

PrimeFactors.factors_for(742_389_473_284) |> IO.inspect(charlists: :as_list)
# PrimeFactors.factors_for(7) |> IO.inspect(charlists: :as_list)

# div(42,2) |> IO.inspect(charlists: :as_list)

# 864
# |> Prime.facto() |> IO.inspect()
# 216
# |> Prime.facto() |> IO.inspect()
# 60
# |> Prime.facto() |> IO.inspect()
