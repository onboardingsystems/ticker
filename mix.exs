defmodule Ticker.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ticker,
      version: "0.0.2",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      docs: [extras: ["README.md"]]
    ]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 0.4.12", only: [:dev, :test]},
      {:ex_doc, "~> 0.13", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      name: :ticker,
      files: ["lib"],
      maintainers: ["OnBoardingSystems"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/onboardingsystems/ticker"}
    ]
  end
  defp description do
    """
    Timer to schedule jobs in small intervals.
    """
  end
end
