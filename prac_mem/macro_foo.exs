defmodule Example do
  defmacro macro_inspect(value) do
    IO.inspect(value)
    value
  end

  def fun_inspect(value) do
    IO.inspect(value)
    value
  end
end
