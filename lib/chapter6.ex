defmodule Chapter6 do

  # ModulesAndFunctions - 4
  def sum(0), do: 0
  def sum(n), do: n + sum(n-1)

  # ModulesAndFunctions - 5
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))

  # ModulesAndFucntions - 6
  def guess(actual, first..last), do: _guess(actual, first..last, first + div(last - first, 2))

  defp _guess(actual, first..last, actual) do
    """
    Is it #{actual}
    #{actual}
    """
  end

  defp _guess(actual, first..last, target) when actual < target do
    "Is it #{target}\n" <> guess(actual, first..target)
  end

  defp _guess(actual, first..last, target) do
    "Is it #{target}\n" <> guess(actual, target..last)
  end
end
