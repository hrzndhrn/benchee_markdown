defmodule BencheeMarkdown.MixProject do
  use Mix.Project

  @source_url "https://github.com/hrzndhrn/benchee_markdown"
  @version "0.3.3"

  def project do
    [
      app: :benchee_markdown,
      version: @version,
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: "Markdown formatter for the (micro) benchmarking library benchee.",
      docs: docs(),
      dialyzer: [
        plt_add_apps: [:eex]
      ],

      # Coveralls
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.github": :test,
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
    deps = [
      {:benchee, ">= 1.1.0 and < 2.0.0"}
    ]

    if Version.match?(System.version(), "~> 1.14") do
      deps ++
        [
          {:credo, "~> 1.0", only: [:dev, :test], runtime: false},
          {:dialyxir, "~> 1.1", only: [:dev], runtime: false},
          {:ex_doc, "~> 0.14", only: :dev},
          {:excoveralls, "~> 0.10", only: :test}
        ]
    else
      deps
    end
  end

  defp package do
    [
      files: ["priv", "lib", "mix.exs", "README.md"],
      maintainers: ["Marcus Kruse"],
      licenses: ["MIT"],
      links: %{
        "Changelog" => "#{@source_url}/blob/master/CHANGELOG.md",
        "GitHub" => @source_url
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      source_ref: "v#{@version}",
      source_url: @source_url,
      extras: [
        "README.md"
      ]
    ]
  end
end
