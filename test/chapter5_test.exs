defmodule Chapter5Test do
  use ExUnit.Case

  test "Functions - 1" do
    list_concat = fn list1, list2 -> list1 ++ list2 end
    assert list_concat.([:a, :b], [:c, :d]) == [:a, :b, :c, :d]

    sum = fn a, b, c -> a + b + c end
    assert sum.(1, 2, 3) == 6

    pair_tuple_to_list = fn {a, b} -> [a, b] end
    assert pair_tuple_to_list.({1234, 5678}) == [1234, 5678]
  end

end
