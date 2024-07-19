defmodule ContinuarInserindo do
  @moduledoc """
  Módulo responsável por perguntar ao usuário se deseja continuar inserindo nomes.
  """

  @doc """
  Função que solicita ao usuário se deseja continuar inserindo nomes.
  Retorna true se o usuário digitar 1 (continuar) e false se digitar 0 (parar).
  """
  def perguntar do
    IO.puts("Deseja inserir outro nome?")
    input = IO.gets("Digite '1' para continuar ou '0' para parar: ") |> String.trim()

    case Integer.parse(input) do
      {1, _} -> true
      {0, _} -> false
      :error ->
        IO.puts("Opção inválida!")
        perguntar()
      _ ->
        IO.puts("Opção inválida!")
        perguntar()
    end
  end
end
