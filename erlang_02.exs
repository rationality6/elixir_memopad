angle_45_deg = :math.pi() * 45 / 180

angle_45_deg
|> :math.sin()
|> IO.inspect()

:math.exp(55)
|> IO.inspect()

q = :queue.new()
q = :queue.in("A", q)
q = :queue.in("B", q)

:math.pi()
|> IO.inspect()

(:rand.uniform() * 8)
|> Kernel.floor()
|> IO.inspect()

:rand.uniform(5)
|> IO.inspect()

Enum.random(0..5)
|> IO.inspect()
