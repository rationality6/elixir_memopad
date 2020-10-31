defmodule StringUtils do
  def upper_case?(""), do: true

  def upper_case?(str) do
    str == String.upcase(str)
  end
end

"" |> StringUtils.upper_case?() |> IO.inspect()
"c" |> StringUtils.upper_case?() |> IO.inspect()
"C" |> StringUtils.upper_case?() |> IO.inspect()
