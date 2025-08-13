defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(spent), do: expected_minutes_in_oven() - spent

  def preparation_time_in_minutes(layers), do: layers * 2

  def total_time_in_minutes(layers, spent) do
    prep_time = preparation_time_in_minutes(layers)
    prep_time + spent
  end

  def alarm(), do: "Ding!"
end
