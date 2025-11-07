defmodule Username do
  def sanitize([]) do
    []
  end

  def sanitize(charlist) do
    sanitize(hd(charlist), tl(charlist))
  end

  def sanitize(head, tail) do
    case head do
      head when head in ?a..?z or head == ?_ -> [head | sanitize(tail)]
      ?ä -> [?a, ?e | sanitize(tail)]
      ?ö -> [?o, ?e | sanitize(tail)]
      ?ü -> [?u, ?e | sanitize(tail)]
      ?ß -> 	[?s, ?s | sanitize(tail)]
      _ -> sanitize(tail)
    end
  end
end
