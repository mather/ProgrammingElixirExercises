defmodule Chapter6Test do
  use ExUnit.Case

  test "ModulesAndFunctions - 1" do
    assert Times.triple(4) == 12
  end

  # ModulesAndFunctions - 2
  #
  # iex(1)> c "lib/times.ex"
  # [Times]
  # iex(2)> Times.triple(4)
  # 12

  test "ModulesAndFunctions - 3" do
    assert Times.quadruple(4) == 16
  end

  test "ModulesAndFunctions - 4" do
    assert Chapter6.sum(10) == 55
  end

  test "ModulesAndFunctions - 5" do
    assert Chapter6.gcd(17, 23) == 1
    assert Chapter6.gcd(91, 26) == 13
  end

  test "ModulesAndFucntions - 6" do
    assert Chapter6.guess(273, 1..1000) == """
      Is it 500
      Is it 250
      Is it 375
      Is it 312
      Is it 281
      Is it 265
      Is it 273
      273
      """
  end
end
