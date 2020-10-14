example_map = %{alpha: "one", bravo: "two", charlie: "three"}
IO.inspect(example_map)
IO.inspect(%{example_map | charlie: "four"})
