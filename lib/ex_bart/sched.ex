defmodule ExBart.Sched do
  import ExBart.Client, only: [request: 2, request: 3]

  def arrive(options) do
    request(:sched, :arrive, options)
  end

  def depart(options) do
    request(:sched, :depart, options)
  end

  def fare(options) do
    request(:sched, :fare, options)
  end

  def holiday do
    request(:sched, :holiday)
  end

  def routesched(options) do
    request(:sched, :routesched, options)
  end

  def scheds do
    request(:sched, :scheds)
  end

  def special(options \\ []) do
    request(:sched, :special, options)
  end

  def stnsched(options) do
    request(:sched, :stnsched, options)
  end
end
