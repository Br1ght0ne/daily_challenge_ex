defmodule Day71 do
  @doc """
  Finds the next happy year after `year`.

  iex> Day71.next_happy_year(7712)
  7801
  iex> Day71.next_happy_year(1001)
  1023
  iex> Day71.next_happy_year(2018)
  2019
  """
  @spec next_happy_year(pos_integer) :: pos_integer
  def next_happy_year(year) do
    (year + 1)
    |> Stream.iterate(&(&1 + 1))
    |> Stream.filter(&happy?/1)
    |> Enum.take(2)
    |> hd
  end

  @doc """
  Checks if a year is a happy year.

  A year is happy if all its digits are unique.

  iex> Day71.happy?(2019)
  true
  iex> Day71.happy?(2021)
  false
  """
  @spec happy?(pos_integer) :: boolean
  def happy?(year) do
    digits = Integer.digits(year)
    Enum.uniq(digits) == digits
  end
end
