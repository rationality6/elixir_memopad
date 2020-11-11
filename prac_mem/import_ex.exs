defmodule ModA do
  defmacro __using__(_opts) do
    IO.puts "You are USING ModA"
    quote do          # <--
      import ModA     # <--
    end               # <--
  end

  def moda() do
    IO.puts "Inside ModA"
  end
end

defmodule ModB do
  # use ModA
  import ModA

  def modb() do
    IO.puts "Inside ModB"
    moda()            # <-- all good now
  end
end

ModB.modb()
