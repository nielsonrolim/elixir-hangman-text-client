defmodule HangmanTextClient do
  defdelegate start(), to: HangmanTextClient.Interact
end
