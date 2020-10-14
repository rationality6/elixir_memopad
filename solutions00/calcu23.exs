defmodule Cal do
  def calculate(seats) do
    if seats <= 5 do
      seats * 20.0
    else
      100 + (seats - 5) * 15.0
    end
  end
end

Cal.calculate(4)
|> IO.inspect()

Cal.calculate(6)
|> IO.inspect()

Cal.calculate(9)
|> IO.inspect()
