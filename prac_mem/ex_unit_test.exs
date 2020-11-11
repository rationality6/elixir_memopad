defmodule Foo do
  def bar() do
    true
  end
end

ExUnit.start()

# 2) Create a new test module (test case) and use [`ExUnit.Case`](ExUnit.Case.html).
defmodule AssertionTest do
  # 3) Notice we pass `async: true`, this runs the test case
  #    concurrently with other test cases
  use ExUnit.Case, async: true
  require Foo

  # 4) Use the `test` macro instead of `def` for clarity.
  test "the truth" do
    assert true == Foo.bar()
  end
end
