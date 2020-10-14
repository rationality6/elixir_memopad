defmodule ExpressionMatter do
  def expression_matter(a, b, c) do
    # your code here
    Enum.max([a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c])
  end
end

ExpressionMatter.expression_matter(1, 2, 3)
|> IO.inspect()
