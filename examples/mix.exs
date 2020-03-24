defmodule Examples.MixProject do
  use Mix.Project

  def project do
    [
      app: :examples,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:benchee_markdown, path: ".."}
    ]
  end

  defp aliases do
    [
      "bench.basic": "run bench/basic/run.exs",
      "bench.description": "run bench/description/run.exs",
      "bench.template": "run bench/template/run.exs"
    ]
  end
end
