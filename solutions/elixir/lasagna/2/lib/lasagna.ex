defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(m) do
    expected_minutes_in_oven() - m
  end

  def preparation_time_in_minutes(n) do
    n * 2
  end

  def total_time_in_minutes(n, m) do
    preparation_time_in_minutes(n) + m
  end

  def alarm() do
    "Ding!"
  end
end
