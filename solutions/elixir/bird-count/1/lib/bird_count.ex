defmodule BirdCount do
  def today(list) do
    List.first(list)
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  def has_day_without_birds?(list) do
    0 in list
  end

  def total([]) do
    0
  end

  def total([head | tail]) do
    head + total(tail)
  end

  def busy_days([]) do
    0
  end

  def busy_days([head | tail]) do
    if(head >= 5, do: 1, else: 0) + busy_days(tail)
  end
end
