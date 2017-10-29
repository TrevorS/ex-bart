defmodule ExBart.Version do
  import ExBart.Client, only: [request: 2]

  def version do
    request(:version, nil)
  end
end
