defmodule Roshambo do

  def main([]) do
    IO.puts("Please provide a value of 'rock', 'paper', or 'scissors'")
  end

  def main(arg) do
    player_move = List.first(arg)
    play(player_move)
  end

  defp play(player_move) do
    get_comp_move()
    |> determine_winner(player_move)
    |> IO.puts()
  end

  defp get_comp_move do
    Enum.random(["rock", "paper", "scissors"])
  end

  defp determine_winner("paper", "rock") do
    "You lost, computer played paper"
  end

  defp determine_winner("rock", "scissors") do
    "You lost, computer played rock"
  end

  defp determine_winner("scissors", "paper") do
    "You lost, computer played scissors"
  end

  defp determine_winner(comp_move, player_move) when comp_move == player_move do
    "It was a tie, you both played #{comp_move}"
  end

  defp determine_winner(comp_move, _) do
    "You win, computer played #{comp_move}"
  end
end
