defmodule Lang.Parser do
  def tokenize(str) do
    {:ok, tokens, _ } = str |> to_char_list |> :lexer.string
    tokens
  end
end
