map = %{"id" => 1, "name" => "a"}
Map.take(map, ["id"]) |> IO.inspect()
map["id"] |> IO.inspect()

Map.merge(%{foo: "bar", 밥: "쌀"}, %{baz: "zal"}) |> IO.inspect()

rem(3, 2) |> IO.inspect()

12.555 |> Float.ceil(0) |> IO.inspect()
12.555 |> ceil() |> IO.inspect()

{page, ""} = Integer.parse("c")
IO.inspect(page)

Integer.parse("1")
|> IO.inspect()

{page, ""} = Integer.parse("c")
IO.inspect(page)

Integer.parse("1")
|> IO.inspect()

defmodule Parse do
  def param_to_integer(param, default_value) do
    case Integer.parse(param) do
      {num, _} -> num
      :error -> default_value
    end
  end
end

Parse.param_to_integer("cat", 1) |> IO.inspect()
