defmodule ContinuarInserindo do
  @moduledoc """
  Módulo responsável por perguntar ao usuário se deseja continuar inserindo nomes.
  """

  @doc """
  Função que solicita ao usuário se deseja continuar inserindo nomes.
  Retorna true se o usuário digitar '1' (continuar) e false se digitar '0' (parar).
  """
  def perguntar do
    IO.puts("Deseja inserir outro nome?")
    IO.puts("Digite '1' para continuar ou '0' para parar:")
    input = IO.gets("") |> String.trim()

    case input do
      "1" -> true
      "0" -> false
      _ -> perguntar()
    end
  end
end
