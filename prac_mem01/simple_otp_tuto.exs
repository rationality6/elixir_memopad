pid = spawn(fn -> IO.puts("Hello Full stack") end)

IO.inspect(pid)
Process.alive?(pid) |> IO.inspect()
