defmodule ColetarNomes do
  @moduledoc """
  Módulo responsável por coletar nomes do usuário.
  """

  @doc """
  Função que coleta nomes do usuário até que ele insira uma linha vazia.
  """
  def coletar(nomes) do
    nomes_inseridos = ContinuarInserindo.coletar_nomes(nomes)
    IO.puts("Nomes inseridos:")
    nomes_com_romanos = NumerosRomanos.gerar_numeros_romanos(Enum.reverse(nomes_inseridos))
    Enum.each(nomes_com_romanos, &IO.puts(&1))
  end
end
