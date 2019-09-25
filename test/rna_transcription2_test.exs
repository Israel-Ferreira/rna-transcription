defmodule RnaTranscription2Test do
  use ExUnit.Case
  doctest RnaTranscription2

  test "Should be translate ATGC in UACG" do
    assert RnaTranscription2.translate_to_rna("ATGC") == "UACG"
  end

  test "Should be translate CARROT" do
    assert RnaTranscription2.translate_to_rna("CARROT") == "Invalid RNA"
  end

  test "Should be translate GCATC" do
    assert RnaTranscription2.translate_to_rna("GCATC") == "CGUAG"
  end

end
