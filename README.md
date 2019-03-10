# BencheeMarkdown
[![Build Status](https://travis-ci.org/hrzndhrn/benchee_markdown.svg?branch=master)](https://travis-ci.org/hrzndhrn/benchee_markdown)
[![Coverage Status](https://coveralls.io/repos/github/hrzndhrn/benchee_markdown/badge.svg?branch=master)](https://coveralls.io/github/hrzndhrn/benchee_markdown?branch=master)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Benche formatter to output markdown. A very early beta version.

## Installation

Add benchee_csv to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:benchee_markdown, "~> 0.1", only: :dev}]
end
```

Afterwards, run `mix deps.get` to install it.

## Usage

Simply configure `Benchee.Formatters.Markdown` as one of the formatters for
`Benchee.run/2` along with the file path you want the output to go.

```elixir
list = Enum.to_list(1..10_000)
map_fun = fn i -> [i, i * i] end

Benchee.run(
  %{
    "flat_map" => fn -> Enum.flat_map(list, map_fun) end,
    "map.flatten" => fn -> list |> Enum.map(map_fun) |> List.flatten() end
  },
  formatters: [
    {Benchee.Formatters.Markdown, file: "my.md"},
    Benchee.Formatters.Console
  ]
```

The sample defines both the standard console formatter and the CSV formatter, if
you don't care about the console output you can just delet that line.
