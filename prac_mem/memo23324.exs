list0 = [32, 33]

Enum.member?(list0, 1) |> IO.inspect()
Enum.member?(list0, 3) |> IO.inspect()
Enum.member?(list0, 31) |> IO.inspect()
Enum.member?(list0, 32) |> IO.inspect()

(1 in list0) |> IO.inspect()
(22 in list0) |> IO.inspect()
(32 in list0) |> IO.inspect()


:math.sqrt(33) |> IO.inspect()


require Integer
Integer.is_even(10) |> IO.inspect()
