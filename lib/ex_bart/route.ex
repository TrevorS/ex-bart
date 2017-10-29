defmodule ExBart.Route do
  import ExBart.Client, only: [request: 3]

  def routeinfo(options) do
    request(:route, :routeinfo, options)
  end

  def routes(options \\ []) do
    request(:route, :routes, options)
  end
end
