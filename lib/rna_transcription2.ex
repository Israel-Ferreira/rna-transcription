defmodule RnaTranscription2 do

  def translate_to_rna(dna) do
    result = dna |> String.split("") |> Enum.filter(fn elem -> elem != "" end) |> Enum.map(&translate_acid(&1))

    if Enum.any?(result, fn x -> x == {:error} end) do
      "Invalid RNA"
    else
      result |> Enum.join("")
    end
  end


  def translate_acid(acid) do
    case acid do
      "A" -> "U"
      "T" -> "A"
      "C" -> "G"
      "G" -> "C"
      _ -> {:error}
    end
  end
end
