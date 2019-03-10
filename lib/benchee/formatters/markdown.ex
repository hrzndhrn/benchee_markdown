defmodule Benchee.Formatters.Markdown do
  @moduledoc """
  Functionality for converting Benchee benchmarking results to an HTML page.

  ## Examples

			list = Enum.to_list(1..10_000)

      map_fun = fn(i) -> [i, i * i] end

      Benchee.run(
        %{
          "flat_map" => fn -> Enum.flat_map(list, map_fun) end,
          "map.flatten" => fn -> list |> Enum.map(map_fun) |> List.flatten() end
        },
        formatters: [
          Benchee.Formatters.Console,
          {Benchee.Formatters.HTML, file: "samples_output/flat_map.html"}
        ]
      )
  """

  @behaviour Benchee.Formatter

  alias Benchee.Suite
  alias Benchee.Formatter.Markdown.Templates

  @doc """
  Formats the output of benchee to markdown page.
  """
  @spec format(Suite.t(), term) :: String.t()
  def format(suite, %{file: _} = opts) do
    IO.inspect(opts)
    Templates.start_link(opts)
    Templates.render(:main, suite: suite)
  end

  def format(_, _) do
    raise """
    You need to specify a file to write the markdown in.

    formatters: [{Benchee.Formatters.Markdown, file: "my.json"}]
    """
  end

  @doc """
  Uses the return value of `Benchee.Formatters.Markdown.format/2` to write it
  to the file defined in the initial configuration.
  """
  @spec write(String.t(), map) :: :ok
  def write(data, %{file: file}) do
    File.write!(file, data)
  end
end
