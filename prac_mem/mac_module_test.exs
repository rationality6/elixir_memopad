defmodule MacdonaldModule do
  def get_total_price(ordered, menu_data) do
    get_total_price(ordered, menu_data, 0)
  end

  def get_total_price(ordered, [head | tail], cur) do
    if Enum.member?(ordered, head.name) do
      get_total_price(ordered, tail, cur + head.price)
    else
      get_total_price(ordered, tail, cur)
    end
  end

  def get_total_price(_, [], cur) do
    cur
  end
end

ExUnit.start()

defmodule MacdonaldModuleTest do
  use ExUnit.Case
  require MacdonaldModule

  describe "맥도날드 모듈 테스트" do
    test "빅맥 콜라 주문" do
      ordered_menu = ["big_mac", "cola"]

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

      assert MacdonaldModule.get_total_price(ordered_menu, menu_data) == 4900
    end

    test "콜라 프라이 주문" do
      ordered_menu = ["cola", "fries"]

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

      assert MacdonaldModule.get_total_price(ordered_menu, menu_data) == 2500
    end
  end
end
