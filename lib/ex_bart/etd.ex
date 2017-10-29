defmodule ExBart.ETD do
  import ExBart.Client, only: [request: 3]

  def etd(options) do
    request(:etd, :etd, options)
  end
end
