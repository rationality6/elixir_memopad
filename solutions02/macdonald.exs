defmodule Macdonald do
  def list_all_menus(menu) do
    Enum.each(menu, fn item -> IO.inspect(item[:이름]) end)
  end

  def list_all_prices(menu) do
    Enum.each(menu, &IO.inspect(&1[:가격]))
  end

  defp get_price_by_order(menu, order) do
    Enum.find_value(menu, fn map -> if map[:이름] == order, do: map[:가격] end)
  end

  defp get_total_price_by_orders(menu, orders) do
    Enum.reduce(orders, 0, fn item, acc -> acc + get_price_by_order(menu, item) end)
  end

  def print_total_value(menu, orders) do
    total = get_total_price_by_orders(menu, orders)
    "주문하신 메뉴들의 총 가격은 #{total} 입니다."
  end
end

mac_menu_data = [
  %{이름: "감자튀김", 가격: 1500},
  %{이름: "불고기버거", 가격: 2000},
  %{이름: "새우버거", 가격: 3500},
  %{이름: "빅맥", 가격: 4000},
  %{이름: "맥치킨", 가격: 3000},
  %{이름: "콜라", 가격: 2000}
]

user0_orderd_menu = ["빅맥", "감자튀김", "콜라"]
user1_orderd_menu = ["불고기버거", "감자튀김"]

# mac_menu_data |> Macdonald.list_all_menus()
# mac_menu_data |> Macdonald.list_all_prices()

Macdonald.print_total_value(mac_menu_data, user0_orderd_menu)
|> IO.inspect()

Macdonald.print_total_value(mac_menu_data, user1_orderd_menu)
|> IO.inspect()
