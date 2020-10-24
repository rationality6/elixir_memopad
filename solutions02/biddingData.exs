defmodule Bidding do
  def getAdId(data) do
    total_price = Enum.reduce(data, 0, fn {_a, b}, acc -> acc + b end)

    Enum.each(data, fn {a, b} -> IO.inspect("#{a} #{b / total_price}%") end)
  end
end

%{1 => 2000, 2 => 3000, 3 => 5000}
|> Bidding.getAdId()
|> IO.inspect()

%{1 => 2000, 2 => 3000, 3 => 5000, 4 => 10000}
|> Bidding.getAdId()
|> IO.inspect()
