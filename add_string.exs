defmodule Add do
  @spec solution(integer()) :: integer()
  def solution(number_string) do
    number_string
    |> Integer.digits()
    |> Enum.reduce(fn a, b -> a + b end)
  end
end

123
|> Add.solution()
|> IO.inspect()
