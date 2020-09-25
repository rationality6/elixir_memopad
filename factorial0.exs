defmodule Practice do
  def fact_normal(n) do
    if n == 0 do
      1
    else
      result = n * fact_normal(n - 1)
      IO.inspect(result)
      result
    end
  end
end

IO.inspect(Practice.fact_normal(5))
