defmodule AdventOfCode.Day01 do
  @spec part1(String.t()) :: integer
  def part1(args) do
    convertTextToSummed(args)
    |> Enum.max()
  end

  @spec part2(String.t()) :: integer
  def part2(args) do
    convertTextToSummed(args)
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
  end

  defp convertTextToSummed(str),
    do:
      str
      |> String.trim()
      |> String.split("\n\n")
      |> Enum.map(&stringToIntArray(&1))
      |> Enum.map(&Enum.sum(&1))

  @spec stringToIntArray(String.t()) :: list(integer)
  def stringToIntArray(xs),
    do:
      xs
      |> String.split("\n")
      |> Enum.map(&String.to_integer(&1))
end
