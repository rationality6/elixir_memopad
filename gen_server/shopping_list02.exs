defmodule ShoppingList do
  use GenServer

  @impl true
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  def handle_call(:view, _from, list) do
    {:reply, list, list}
  end
end

{:ok, pid} = GenServer.start_link(ShoppingList, [])
IO.inspect(pid)
GenServer.call(pid, :view) |> IO.inspect()
