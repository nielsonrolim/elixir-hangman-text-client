defmodule HangmanTextClient.Interact do

  alias HangmanTextClient.State

  def start() do
    Hangman.new_game()
    |> setup_state()
    |> IO.inspect()
  end

  def setup_state(game) do
    %State {
      game_service: game,
      tally: Hangman.tally(game)
    }
  end

  def play(state) do
    play(state)
  end

end
