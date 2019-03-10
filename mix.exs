defmodule BencheeMarkdown.MixProject do
  use Mix.Project

  def project do
    [
      app: :benchee_markdown,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
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
      {:benchee, "~> 0.14"},
      {:credo, "~> 1.0", only: :dev},
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.14", only: :dev},
      {:excoveralls, "~> 0.8", only: :test}
    ]
  end
end
