defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list ]
  end

  def remove(list) do
    Kernel.tl(list)
  end

  def first(list) do
    List.first(list)
  end

  def count(list) do
    Kernel.length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
