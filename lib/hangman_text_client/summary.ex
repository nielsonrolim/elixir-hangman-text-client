defmodule HangmanTextClient.Summary do
  alias HangmanTextClient.State

  def display(game = %State{tally: tally}) do
    IO.puts([
      "\n",
      "Word so far:   #{Enum.join(tally.letters, " ")}\n",
      "Guesses left:  #{tally.turns_left}\n"
    ])

    game
  end
end
