defmodule Username do
  def sanitize(username, s \\ ~c"")

  def sanitize([h | t], s) do
    case h do
      ?ä -> sanitize(t, s ++ ~c"ae")
      ?ö -> sanitize(t, s ++ ~c"oe")
      ?ü -> sanitize(t, s ++ ~c"ue")
      ?ß -> sanitize(t, s ++ ~c"ss")
      c when (h >= ?a and h <= ?z) or c == ?_ -> sanitize(t, s ++ [c])
      _ -> sanitize(t, s)
    end
  end

  def sanitize([], s), do: s
end
