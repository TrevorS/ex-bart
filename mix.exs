defmodule ExBart.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_bart,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.13.0"},
      {:poison, "~> 3.1"},
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false}
    ]
  end
end
