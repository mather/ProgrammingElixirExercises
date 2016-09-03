defmodule Chapter2Test do
  use ExUnit.Case

  test "PatternMatching - 1" do
    a = [1,2,3]
    assert a == [1,2,3]
    a = 4
    4 = a
    assert a == 4

    assert_raise MatchError, fn -> [a, b] = [1,2,3] end

    a = [[1,2,3]]
    assert a == [[1,2,3]]

    [a] = [[1,2,3]]
    assert a == [1,2,3]

    assert_raise MatchError, fn -> [[a]] = [[1,2,3]] end
  end
end
