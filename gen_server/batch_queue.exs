defmodule BatchQueue do
  use GenServer

  def init(queue) do
    {:ok, queue}
  end

  def handle_cast({:add, item}, queue) do
    {:noreply, :queue.in(item, queue)}
  end

  def handle_call(:list, _from, queue) do
    {:reply, :queue.to_list(queue), queue}
  end

  def handle_call(:length, _from, queue) do
    {:reply, :queue.len(queue), queue}
  end

  def handle_call(:fetch, _from, queue) do
    with {{:value, item}, new_queue} <- :queue.out(queue) do
      {:reply, item, new_queue}
    else
      {:empty, _} ->
        {:reply, :empty, queue}
    end
  end

  # Public API
  def start_link() do
    GenServer.start_link(__MODULE__, :queue.new())
  end

  def add(pid, item) do
    GenServer.cast(pid, {:add, item})
  end

  def list(pid) do
    GenServer.call(pid, :list)
  end

  def length(pid) do
    GenServer.call(pid, :length)
  end

  def fetch(pid) do
    GenServer.call(pid, :fetch)
  end
end

ExUnit.start()

defmodule BatchQueueTest do
  use ExUnit.Case

  setup do
    {:ok, pid} = BatchQueue.start_link()
    %{pid: pid}
  end

  test "큐 빈공간으로 시작", %{pid: pid} do
    assert BatchQueue.length(pid) == 0
    assert BatchQueue.list(pid) == []
  end

  test "아이템 하나 넣기", %{pid: pid} do
    BatchQueue.add(pid, "초보자용_방패")

    assert BatchQueue.length(pid) == 1
    assert BatchQueue.list(pid) == ["초보자용_방패"]
  end

  test "아이템 여러개 넣기", %{pid: pid} do
    BatchQueue.add(pid, "기사의_철검")
    BatchQueue.add(pid, "황금_장화")

    assert BatchQueue.length(pid) == 2
    assert BatchQueue.list(pid) == ["기사의_철검", "황금_장화"]
  end

  test "리턴되는 아이템이 맞는지", %{pid: pid} do
    BatchQueue.add(pid, "기사의_철검")
    BatchQueue.add(pid, "황금_장화")

    assert BatchQueue.fetch(pid) == "기사의_철검"
    assert BatchQueue.length(pid) == 1
    assert BatchQueue.list(pid) == ["황금_장화"]
  end

  test "빈 리스트로 패치", %{pid: pid} do
    assert BatchQueue.fetch(pid) == :empty
    assert BatchQueue.length(pid) == 0
  end
end
