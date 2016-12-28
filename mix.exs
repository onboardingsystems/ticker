defmodule Ticker.Mixfile do
  use Mix.Project

  @project_url "https://github.com/onboardingsystems/ticker"

  def project do
    [
      app: :ticker,
      version: "0.0.4",
      elixir: "~> 1.3",
      source_url: @project_url,
      homepage_url: @project_url,
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
      maintainers: ["OnBoardingSystems"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => @project_url}
    ]
  end
  defp description do
    """
    Timer to schedule jobs in small intervals.
    """
  end
end
