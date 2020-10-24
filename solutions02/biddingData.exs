defmodule Bidding do
  @spec get_total_price(list()) :: integer()
  defp get_total_price(data) do
    Enum.reduce(data, 0, fn {_a, b}, acc -> acc + b end)
  end

  def getAdId(data) do
    total = get_total_price(data)
    Enum.each(data, fn {a, b} -> IO.inspect("#{a} #{b / total}%") end)
  end

end

%{1 => 2000, 2 => 3000, 3 => 5000}
|> Bidding.getAdId()
|> IO.inspect()

%{1 => 2000, 2 => 3000, 3 => 5000, 4 => 10000}
|> Bidding.getAdId()
|> IO.inspect()
