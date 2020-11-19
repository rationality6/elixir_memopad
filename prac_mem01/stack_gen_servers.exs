defmodule Stack do
  use GenServer

  @impl true
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_call(:pop, _from, []) do
    {:reply, [], []}
  end

  @impl true
  def handle_cast({:push, element}, state) do
    {:noreply, [element | state]}
  end
end

{:ok, pid} = GenServer.start_link(Stack, [:hi, :hello, :world])

IO.inspect(pid)
GenServer.call(pid, :pop) |> IO.inspect()
GenServer.call(pid, :pop) |> IO.inspect()
GenServer.call(pid, :pop) |> IO.inspect()
GenServer.call(pid, :pop) |> IO.inspect()

GenServer.cast(pid, {:push, :world?})

GenServer.call(pid, :pop) |> IO.inspect()
