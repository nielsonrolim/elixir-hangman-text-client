defmodule HangmanTextClient.State do
  defstruct(
    game_service: nil,
    tally: nil,
    guessed: ""
  )
end
