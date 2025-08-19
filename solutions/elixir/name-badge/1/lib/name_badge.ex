defmodule NameBadge do
  def print(id, name, nil), do: print(id, name, "OWNER")
  def print(id, name, department) do
    if id do
      "[#{id}] - #{name} - #{department |> String.upcase}"
    else
      "#{name} - #{department |> String.upcase}"
    end
  end
end
