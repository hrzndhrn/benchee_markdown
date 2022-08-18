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
          {Benchee.Formatters.Markdown, file: "samples_output/flat_map.html"}
        ]
      )
  """

  @behaviour Benchee.Formatter

  alias Benchee.Formatter.Markdown.Templates

  @doc """
  Formats the output of benchee to markdown page.
  """
  @impl true
  def format(suite, %{file: _} = opts) do
    render(suite, opts)
  end

  def format(_, _) do
    raise """
    You need to specify a file to write the markdown in.

    formatters: [{Benchee.Formatters.Markdown, file: "my.md"}]
    """
  end

  @doc """
  Uses the return value of `Benchee.Formatters.Markdown.format/2` to write it
  to the file defined in the initial configuration.
  """
  @impl true
  def write(data, %{file: file}), do: File.write!(file, data)

  @doc """
  Renders a given `%Benchee.Suite{}` as makrdown.
  """
  def render(suite, opts \\ %{})

  def render(suite, opts) when is_list(opts) do
    render(suite, Enum.into(opts, %{}))
  end

  def render(suite, opts) do
    Templates.start_link(opts)

    opts
    |> Map.get(:template, template(opts))
    |> Templates.render(
      suite: suite,
      description: Map.get(opts, :description)
    )
    |> String.trim()
  end

  defp template(opts) do
    case livebook?(opts) do
      true -> :livebook
      false -> :main
    end
  end

  defp livebook?(opts), do: Map.get(opts, :livebook, false)
end
