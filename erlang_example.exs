String.to_charlist("Ø")
|> IO.inspect()

"Ø"
|> String.to_charlist()
|> IO.inspect()

"Ø"
|> :binary.bin_to_list()
|> IO.inspect()

table = :ets.new(:ets_test, [])

:ets.insert(table, {"China", 1_374_000_000})
:ets.insert(table, {"India", 1_284_000_000})
:ets.insert(table, {"USA", 322_000_000})
# :ets.i(table)
