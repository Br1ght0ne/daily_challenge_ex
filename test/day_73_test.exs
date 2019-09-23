defmodule Day73Test do
  use ExUnit.Case
  doctest Day73

  describe "maximum_thrill" do
    test "empty" do
      assert 0 == Day73.maximum_thrill([])
    end

    test "single_atm" do
      assert 6 == Day73.maximum_thrill([3])
    end

    test "one_simple" do
      assert 8 == Day73.maximum_thrill([3, 1, 3])
    end

    test "any_simple" do
      assert 10 == Day73.maximum_thrill([2, 3, 4, 5])
    end

    test "one_greater_distance" do
      assert 26 == Day73.maximum_thrill([10, 10, 11, 13, 7, 8, 9])
    end

    test "complicated_max_distance" do
      atms = [2, 3, 4, 5, 10, 6, 7, 8, 9, 10, 11, 12, 4, 4, 2, 2, 12, 8]
      assert 34 == Day73.maximum_thrill(atms)
    end
  end
end
