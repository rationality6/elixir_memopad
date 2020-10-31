defmodule MapMirror do
  @moduledoc """
    Mirror - Mirror
    Can you mirror the properties on an object?

    Given an object with properties with no value

    abc: -
    arara: -
    xyz: -
    Return a new object that have the properties with its mirrored key!

    abc: cba
    arara: arara
    xyz: zyx
    "You cannot change the original object, because if you did that the reflection would change."
  """
  def mirror(map) do
    # Your code here
    reversed = map |> String.codepoints() |> Enum.reverse() |> Kernel.to_string()
    %{"#{map}" => "#{reversed}"}
  end

  def mirror0(map) do
    Map.keys(map) |>
    Map.new(&({ &1, String.reverse(to_string(&1)) }))
  end
end

"abc"
|> MapMirror.mirror()
|> IO.inspect()
# "cba"

"abc"
|> MapMirror.mirror0()
|> IO.inspect()
# "cba"
