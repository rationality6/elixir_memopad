defmodule Shepherd do
  def count_sheeps(sheeps) do
    Enum.count(sheeps, & &1 == true)
  end

  def count_numbers(nums,target) do
    Enum.count(nums, &(&1==target))
  end
end

Shepherd.count_sheeps([true, true, false, true])
|> IO.inspect()


data0 = [true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true]

Shepherd.count_sheeps(data0)
|> IO.inspect()


Shepherd.count_numbers([1,2,3,4,5,2,2,2],2)
|>IO.inspect()

Shepherd.count_numbers([1,2,3,4,5,2,2,2],5)
|>IO.inspect()
