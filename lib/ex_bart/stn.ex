defmodule ExBart.Stn do
  import ExBart.Client, only: [request: 3]

  def stnaccess(options) do
    request(:stn, :stnaccess, options)
  end

  def stninfo(options) do
    request(:stn, :stninfo, options)
  end

  def stns(options) do
    request(:stn, :stns, options)
  end
end
