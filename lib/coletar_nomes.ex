defmodule ColetarNomes do
  @moduledoc """
  Módulo responsável por coletar nomes do usuário.
  """

  @doc """
  Função que coleta nomes do usuário até que ele insira uma linha vazia.
  """
  def coletar_nomes(nomes) do
    nomes_inseridos = ContinuarInserindo.continuar_inserindo(nomes)
    IO.puts("Nomes inseridos:")
    nomes_com_numeros_romanos = NumerosRomanos.gerar_numeros_romanos(Enum.reverse(nomes_inseridos))
    Enum.each(nomes_com_numeros_romanos, &IO.puts(&1))
  end
end
