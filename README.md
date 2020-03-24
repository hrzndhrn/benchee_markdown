# BencheeMarkdown
[![Hex.pm](https://img.shields.io/hexpm/v/benchee_markdown.svg)](https://hex.pm/packages/benchee_markdown)
[![Build Status](https://travis-ci.org/hrzndhrn/benchee_markdown.svg?branch=master)](https://travis-ci.org/hrzndhrn/benchee_markdown)
[![Coverage Status](https://coveralls.io/repos/github/hrzndhrn/benchee_markdown/badge.svg?branch=master)](https://coveralls.io/github/hrzndhrn/benchee_markdown?branch=master)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[Benchee](https://github.com/bencheeorg/benchee) formatter to output markdown. A very early beta version.

## Installation

Add benchee_markdown to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:benchee_markdown, "~> 0.2", only: :dev}]
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
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown,
      file: "my.md"
      description: """
      This benchmark compares `foobar` with the libs `foo` and `bar`.
      """
    }
  ]
```

The sample defines both the standard console formatter and the markdown
formatter, if you don't care about the console output you can just delete that
line.

The `:description` is optional. Without a `:description` the text "Benchmark run
from 2020-03-24 14:03:11.471713Z UTC" with the actual data time will be
inserted.

## Examples

Examples can been seen at
- [examples/bench/basic](examples/bench/basic).
- [examples/bench/description](examples/bench/description).
- [examples/bench/template](examples/bench/template).

Examples can be run under `examples` with
- `mix bench.basic`
- `mix bench.description`
- `mix bench.template`
