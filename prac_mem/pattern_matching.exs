{a, b, c} = {:hello, "world", 42}
IO.inspect(a)
IO.inspect(b)
IO.inspect(c)

[a, b, c] = [1, 2, 3]
IO.inspect(a)
IO.inspect(b)
IO.inspect(c)

[head | tail] = [1, 2, 3, 4, 5]
IO.inspect(head)
IO.inspect(tl(tail))

x = 1
IO.inspect(x)
x = 2
IO.inspect(x)

x = 1
IO.inspect(x)
^x = 3
IO.inspect(x)

{x, x} = {1, 1}
{x, x} = {1, 2}

x = 1
[^x, 2, 3] = [1, 2, 3]
[^x, 2, 3] = [2, 2, 3]
