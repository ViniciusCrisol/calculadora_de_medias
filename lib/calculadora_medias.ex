defmodule CalculadoraMedias do
  alias CalculadoraMedias.Estudante

  def calcular(estudantes) do
    estudantes
    |> Enum.map(
      &%{
        primeiro_nome: Estudante.pegar_primeiro_nome(&1),
        ultimo_nome: Estudante.pegar_ultimo_nome(&1),
        media: calcular_media_individual(&1)
      }
    )
    |> calcular_media_coletiva()
  end

  defp calcular_media_individual(%Estudante{notas: notas}) do
    notas
    |> Enum.sum()
    |> div(length(notas))
  end

  defp calcular_media_coletiva(estudantes) do
    estudantes
    |> Enum.reduce(0, fn %{media: media}, acc -> acc + media end)
    |> div(length(estudantes))
  end
end
