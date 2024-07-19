defmodule NumerosRomanos do
  @moduledoc """
  Módulo para gerar nomes com algarismos romanos.
  """

  @doc """
  Gera uma lista de nomes com algarismos romanos.
  """
  def gerar_numeros_romanos(nomes) do
    gerar_numeros_romanos(nomes, %{}, [])
  end

  defp gerar_numeros_romanos([], _contador, acumulador) do
    acumulador
  end

  defp gerar_numeros_romanos([nome | resto], contagem, acumulador) do
    count = Map.get(contagem, nome, 0)
    nova_contagem = Map.update(contagem, nome, count + 1, &(&1 + 1))

    numeros_romanos = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"]
    numero = Enum.at(numeros_romanos, count) || Integer.to_string(count + 1)

    novo_nome = "#{nome} #{numero}"
    gerar_numeros_romanos(resto, nova_contagem, acumulador ++ [novo_nome])
  end
end
