defmodule ExBart.BSA do
  import ExBart.Client, only: [request: 2, request: 3]

  def bsa(options \\ []) do
    request(:bsa, :bsa, options)
  end

  def count do
    request(:bsa, :count)
  end

  def elev do
    request(:bsa, :elev)
  end
end
