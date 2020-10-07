defmodule Triangle do
  @sum_of_angles 180
  def other_angle(a, b) do
    @sum_of_angles - (a + b)
  end
end

Triangle.other_angle(30, 60)
|> IO.inspect()

Triangle.other_angle(60, 60)
|> IO.inspect()

Triangle.other_angle(43, 78)
|> IO.inspect()

Triangle.other_angle(10, 20)
|> IO.inspect()

list0 = [1, 2, 3]

[4 | list0]
|> IO.inspect()

list0 = [1, 2, 3]

list0
|> Enum.concat([5])
|> IO.inspect()
