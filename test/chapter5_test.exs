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

  test "Functions - 2" do
    fizzbuzz = fn
      (0, 0, _) -> "FizzBuzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
      (_, _, n) -> n
    end

    assert fizzbuzz.(0, 0, 15) == "FizzBuzz"
    assert fizzbuzz.(0, 1, 6)  == "Fizz"
    assert fizzbuzz.(1, 0, 10) == "Buzz"
    assert fizzbuzz.(1, 3, 13) == 13
  end

  test "Functions - 3" do
    fizzbuzz = fn
      (0, 0, _) -> "FizzBuzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
      (_, _, n) -> n
    end

    fizzbuzz_n = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

    assert fizzbuzz_n.(15) == "FizzBuzz"
    assert fizzbuzz_n.(6)  == "Fizz"
    assert fizzbuzz_n.(10) == "Buzz"
    assert fizzbuzz_n.(13) == 13
  end

  test "Functions - 4" do
    prefix = fn str -> fn name -> str <> " " <> name end end
    mrs = prefix.("Mrs")
    assert mrs.("Smith") == "Mrs Smith"
    assert prefix.("Elixir").("Rocks") == "Elixir Rocks"
  end
end
