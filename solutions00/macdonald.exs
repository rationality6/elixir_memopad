defmodule Macdonald do
  def order_price(ordered, menu_data) do
    order_price(ordered, menu_data, 0)
  end

  def order_price(ordered, [head | tail], cur) do
    if Enum.member?(ordered, head.name) do
      order_price(ordered, tail, cur + head.price)
    else
      order_price(ordered, tail, cur)
    end
  end

  def order_price(_, [], cur) do
    cur
  end
end

menu_data = [
  %{
    name: "big_mac",
    price: 3900
  },
  %{
    name: "mac_chicken",
    price: 3000
  },
  %{
    name: "cola",
    price: 1000
  },
  %{
    name: "fries",
    price: 1500
  }
]

ordered_menu0 = ["big_mac", "cola"]
ordered_menu1 = ["cola", "fries"]

IO.inspect(Macdonald.order_price(ordered_menu0, menu_data))
IO.inspect(Macdonald.order_price(ordered_menu1, menu_data))
