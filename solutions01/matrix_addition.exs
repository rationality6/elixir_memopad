defmodule Kata do
  @moduledoc """
  Write a function that accepts two square matrices (N x N two dimensional arrays), and return the sum of the two. Both matrices being passed into the function will be of size N x N (square), containing only integers.

  How to sum two matrices:

  Take each cell [n][m] from the first matrix, and add it with the same [n][m] cell from the second matrix. This will be cell [n][m] of the solution matrix.
  """
  def matrix_addition(a, b) do
    # your code here
    zip =
      Enum.zip(a, b)
      |> IO.inspect()
      |> Enum.map(fn {c, d} -> Enum.zip(c, d) |> Enum.map(fn {x, y} -> x + y end) end)
      |> IO.inspect()
  end
end

Kata.matrix_addition(
  [[1, 2, 3], [3, 2, 1], [1, 1, 1]],
  [[2, 2, 1], [3, 2, 3], [1, 1, 3]]
)

# |> IO.inspect()

# // returns:
#   [ [3, 4, 4],
#     [6, 4, 4],
#     [2, 2, 4] ]
