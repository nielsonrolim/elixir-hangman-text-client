defmodule HangmanTextClient.Player do
  alias HangmanTextClient.{Mover, Prompt, State, Summary}

  def play(%State{tally: %{game_state: :won}}) do
    exit_with_message("Yay! You won!")
  end

  def play(%State{tally: %{game_state: :lost}}) do
    exit_with_message("Ouch! You lost!")
  end

  def play(game = %State{tally: %{game_state: :good_guess}}) do
    continue_with_message(game, "Nice! Good guess!")
  end

  def play(game = %State{tally: %{game_state: :bad_guess}}) do
    continue_with_message(game, "Ops, not in the word")
  end

  def play(game = %State{tally: %{game_state: :already_used}}) do
    continue_with_message(game, "WTF! You alread used this letter!")
  end

  def play(game) do
    continue(game)
  end

  defp continue_with_message(game, message) do
    IO.puts(message)
    continue(game)
  end

  defp exit_with_message(message) do
    IO.puts(message)
    exit(:normal)
  end

  defp continue(game) do
    game
    |> Summary.display()
    |> Prompt.accept_move()
    |> Mover.make_move()
    |> play()
  end
end
