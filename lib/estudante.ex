defmodule CalculadoraMedias.Estudante do
  defstruct nome: nil, notas: []

  def pegar_primeiro_nome(%__MODULE__{nome: nome}) do
    nome
    |> String.split()
    |> List.first()
  end

  def pegar_ultimo_nome(%__MODULE__{nome: nome}) do
    nome
    |> String.split()
    |> List.last()
  end
end
