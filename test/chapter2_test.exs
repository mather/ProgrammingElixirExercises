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

  test "PatternMatching - 2" do
    assert_raise MatchError, fn -> [a, b, a] = [1, 2, 3] end
    assert_raise MatchError, fn -> [a, b, a] = [1, 1, 2] end
    [a, b, a] = [1, 2, 1]
    assert {a, b} == {1, 2}
  end

  test "PatternMatching - 3" do
    assert_raise MatchError, fn ->
      a = 2
      [a, b, a] = [1, 2, 3]
    end

    assert_raise MatchError, fn ->
      a = 2
      [a, b, a] = [1, 1, 2]
    end

    a = 2
    a = 1
    assert a == 1

    a = 2
    ^a = 2

    assert_raise MatchError, fn ->
      a = 2
      ^a = 1
    end

    assert_raise MatchError, fn ->
      a = 2
      ^a = 2 - a
    end
  end
end
