defmodule HangmanTextClient.Interact do

  @hangman_server :"hangman@nielsonrolim-Z370M-DS3H"

  alias HangmanTextClient.{Player, State}

  def start() do
    new_game()
    |> setup_state()
    |> Player.play()
  end

  def setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman.tally(game)
    }
  end

  defp new_game() do
    Node.connect(@hangman_server)
    :rpc.call(@hangman_server, Hangman, :new_game, [])
  end
end
