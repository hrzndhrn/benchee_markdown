defmodule BencheeMarkdown.MixProject do
  use Mix.Project

  def project do
    [
      app: :benchee_markdown,
      version: "0.2.5",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: """
      Markdown formatter for the (micro) benchmarking library benchee.
      """,
      dialyzer: [
        plt_add_apps: [:eex]
      ],

      # Coveralls
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger, :eex]
    ]
  end

  defp deps do
    [
      {:benchee, ">= 0.99.0 and < 2.0.0"},
      {:credo, "~> 1.0", only: [:dev, :test]},
      {:dialyxir, "~> 1.0.0-rc.4", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.14", only: :dev},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end

  defp package do
    [
      files: ["priv", "lib", "mix.exs", "README.md"],
      maintainers: ["Marcus Kruse"],
      licenses: ["MIT"],
      links: %{
        "github" => "https://github.com/hrzndhrn/benchee_markdown"
      }
    ]
  end
end
