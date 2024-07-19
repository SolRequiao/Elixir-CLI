defmodule DesafioCli do
  @moduledoc """
  Ponto de entrada para a CLI.
  """

  @doc """
  A função main é o ponto de entrada da CLI. Ela inicia a coleta de nomes.
  """
  def main(_args) do
    ColetarNomes.coletar([])
  end
end
