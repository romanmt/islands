defmodule BoardTest do
  use ExUnit.Case

  alias IslandsEngine.Board

  test "All Islands Positioned" do
    board = %{dot: :a, atoll: :b, square: :c, l_shape: :d, s_shape: :e}
    assert Board.all_islands_positioned?(board)
  end

  test "All Islands not Positioned" do
    board = %{dot: :a, atoll: :b, square: :c, l_shape: :d}
    assert Board.all_islands_positioned?(board) == false
  end

end
