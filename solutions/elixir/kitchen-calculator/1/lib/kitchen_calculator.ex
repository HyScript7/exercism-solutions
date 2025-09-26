defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, vol} = volume_pair
    vol
  end

  def to_milliliter(volume_pair) do
    {unit, vol} = volume_pair
    cond do
      unit == :cup -> {:milliliter, vol * 240}
      unit == :fluid_ounce -> {:milliliter, vol * 30}
      unit == :teaspoon -> {:milliliter, vol * 5}
      unit == :tablespoon -> {:milliliter, vol * 15}
      unit == :milliliter -> {:milliliter, vol}
    end
  end

  def from_milliliter(volume_pair, unit) do
    vol = get_volume(volume_pair)
    cond do
      unit == :cup -> {unit, vol/240}
      unit == :fluid_ounce -> {unit, vol/30}
      unit == :teaspoon -> {unit, vol/5}
      unit == :tablespoon -> {unit, vol/15}
      unit == :milliliter -> {unit, vol}
    end
  end

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
