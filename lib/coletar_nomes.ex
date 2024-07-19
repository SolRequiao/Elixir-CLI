defmodule ColetarNomes do
  @moduledoc """
  Módulo responsável por coletar nomes do usuário.
  """

  @doc """
  Função que coleta nomes do usuário em um loop até que o usuário decida parar.
  """
  def coletar(nomes) do
    IO.puts("Digite um nome:")
    nome = IO.gets("") |> String.trim()

    # Adiciona o nome à lista
    nomes_atualizados = [nome | nomes]

    continuar = ContinuarInserindo.perguntar()

    if continuar do
      coletar(nomes_atualizados)
    else
      IO.puts("Nomes inseridos:")
      nomes_com_romanos = RomanNumerals.generate_names_with_romans(Enum.reverse(nomes_atualizados))
      Enum.each(nomes_com_romanos, &IO.puts(&1))
    end
  end
end
