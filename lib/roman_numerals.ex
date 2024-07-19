defmodule RomanNumerals do
  @moduledoc """
  Módulo para gerar nomes com algarismos romanos.
  """

  @doc """
  Gera uma lista de nomes com algarismos romanos.
  """
  def generate_names_with_romans(names) do
    generate_names_with_romans(names, %{}, [])
  end

  defp generate_names_with_romans([], _counts, acc) do
    acc
  end

  defp generate_names_with_romans([name | rest], counts, acc) do
    count = Map.get(counts, name, 0)
    new_counts = Map.update(counts, name, count + 1, &(&1 + 1))

    roman_numerals = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"]
    numeral = Enum.at(roman_numerals, count) || Integer.to_string(count + 1)

    new_name = "#{name} #{numeral}"
    generate_names_with_romans(rest, new_counts, acc ++ [new_name])
  end
end
