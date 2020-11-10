defmodule Foo do
  def sort_link(text, sort_by, options) do
    text =
      case options do
        %{sort_by: ^sort_by, sort_order: sort_order} ->
          text <> emoji(sort_order)
        _ ->
          text
      end
  end

  defp emoji(:asc), do: "👇"
  defp emoji(:desc), do: "👆"
end


Foo.sort_link("foo", "id", %{sort_by: "id", sort_order: :desc})
|> IO.inspect()
