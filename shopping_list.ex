defmodule ShoppingList do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end

  def add(pid,item) do

  end

  def init(list) do
    {:ok, list}
  end
end
