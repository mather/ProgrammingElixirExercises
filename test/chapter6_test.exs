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

end
