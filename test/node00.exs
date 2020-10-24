defmodule ElixirTrees.Tree do
  defstruct value: nil, key: nil, children: []
end

defmodule ElixirTrees.TreTraversal do
  alias ElixirTrees.Tree

  @type tree() :: Tree.t()
end
