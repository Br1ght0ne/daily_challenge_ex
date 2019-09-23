defmodule Day73 do
  @spec maximum_thrill([non_neg_integer]) :: non_neg_integer
  def maximum_thrill(atms) do
    atms
    |> Enum.with_index()
    |> combinations(2)
    |> Enum.map(fn [{v1, i1}, {v2, i2}] -> v1 + v2 + abs(i1 - i2) end)
    |> Enum.concat(Enum.map(atms, &(&1 * 2)))
    |> Enum.max(fn -> 0 end)
  end

  @spec combinations(coll :: [any], size :: pos_integer) :: [[any]]
  defp combinations(_, 0), do: [[]]
  defp combinations([], _), do: []

  defp combinations([head | tail], size) do
    tail
    |> combinations(size - 1)
    |> Enum.map(&[head | &1])
    |> Enum.concat(combinations(tail, size))
  end
end
