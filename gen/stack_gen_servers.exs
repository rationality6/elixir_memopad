defmodule Stack do
  use GenServer

  # 클라이언트 사이드
  def start_link(default) when is_list(default) do
    GenServer.start_link(__MODULE__, default)
  end

  def push(pid, element) do
    GenServer.cast(pid, {:push, element})
  end

  def pop(pid) do
    GenServer.call(pid, :pop)
  end

  def printing_list(pid) do
    GenServer.call(pid, :view)
  end

  # 서버 사이드 (callbacks)
  @impl true
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  def handle_call(:pop, _from, []) do
    {:reply, [], []}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  @impl true
  def handle_cast({:push, element}, state) do
    {:noreply, [element | state]}
  end

  @impl true
  def handle_call(:view, _from, list) do
    {:reply, list, list}
  end
end

# {:ok, pid} = GenServer.start_link(Stack, [:hi, :hello, :world])

# IO.inspect(pid)
# GenServer.call(pid, :pop) |> IO.inspect()
# GenServer.call(pid, :pop) |> IO.inspect()
# GenServer.call(pid, :pop) |> IO.inspect()
# GenServer.call(pid, :pop) |> IO.inspect()

# GenServer.cast(pid, {:push, :world?})

# GenServer.call(pid, :pop) |> IO.inspect()

{:ok, pid} = Stack.start_link([:hi, :hello, :world])
IO.inspect(pid)
Stack.push(pid, :안늉)
Stack.push(pid, :쁑)
Stack.printing_list(pid)
