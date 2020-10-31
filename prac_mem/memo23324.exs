list0 = [32, 33]

Enum.member?(list0, 1) |> IO.inspect()
Enum.member?(list0, 3) |> IO.inspect()
Enum.member?(list0, 31) |> IO.inspect()
Enum.member?(list0, 32) |> IO.inspect()

(1 in list0) |> IO.inspect()
(22 in list0) |> IO.inspect()
(32 in list0) |> IO.inspect()
