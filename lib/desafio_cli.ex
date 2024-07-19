defmodule DesafioCli do
  @moduledoc """
  Ponto de entrada para a CLI.
  """

  @doc """
  A função main é o ponto de entrada da CLI. Ela inicia a coleta de nomes.
  """
  def main(_args) do
    IO.puts("Esse programa tem o intuito de receber nomes. Após a inserção dos nomes, o programa irá listá-los com suas respectivas numerações romanas.")
    ColetarNomes.coletar_nomes([])
  end
end
