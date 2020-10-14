defmodule Tank do
  def turn_left(tank, degree) do
    value = tank.degrees + degree
    IO.inspect(value)
    %{tank | degrees: value}
  end

  def move(tank, move) do
    update = tank.move + move
    IO.inspect(update)
    %{tank | move: update}
  end

  def fire(tank) do
    IO.inspect(tank)
  end
end

tank0 = %{:move => 0, :degrees => 0}

tank0 =
  Tank.move(
    Tank.move(
      Tank.turn_left(
        Tank.turn_left(tank0, 90),
        90
      ),
      200
    ),
    200
  )

IO.inspect(tank0)

# refactor # 1
tank0 = Tank.turn_left(tank0, 90)
tank0 = Tank.turn_left(tank0, 90)
tank0 = Tank.move(tank0, 200)
tank0 = Tank.move(tank0, 200)
IO.inspect(tank0)

# pipe operator
tank0 =
  tank0
  |> Tank.turn_left(90)
  |> Tank.turn_left(90)
  |> Tank.move(200)
  |> Tank.move(200)
  |> Tank.fire()

IO.inspect(tank0)

Map.put(%{}, :a, 1)
