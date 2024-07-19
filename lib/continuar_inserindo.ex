defmodule ContinuarInserindo do
  @moduledoc """
  Módulo responsável por perguntar ao usuário se deseja continuar inserindo nomes.
  """

  @doc """
  Função que coleta nomes do usuário até que ele insira uma linha vazia.
  """
  def continuar_inserindo(nomes) do
    IO.puts("Digite um nome (pressione Enter em uma linha vazia para terminar):")
    nome = IO.gets("") |> String.trim()

    if nome == "" do
      nomes
    else
      continuar_inserindo([nome | nomes])
    end
  end
end
