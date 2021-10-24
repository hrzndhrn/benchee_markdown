defmodule Benchee.Formatter.Markdown.Helpers do
  @moduledoc false

  alias Benchee.Conversion
  alias Benchee.Conversion.Duration
  alias Benchee.Conversion.Memory
  alias Benchee.Formatters.Console

  @html_entities %{
    "±" => "&plusmn;",
    "μ" => "&micro;"
  }

  def count_output(count, unit) do
    count |> Console.Helpers.count_output(unit) |> escape()
  end

  def deviation_output(devitation) do
    devitation |> Console.Helpers.deviation_output() |> escape()
  end

  def duration_output(duration, unit) do
    {Duration.scale(duration, unit), unit}
    |> Duration.format()
    |> escape()
  end

  def memory_output(memory, unit) do
    {Memory.scale(memory, unit), unit}
    |> Memory.format()
    |> escape()
  end

  def units(scenarios, suite) do
    Conversion.units(scenarios, suite.configuration.unit_scaling)
  end

  def scenarios(suite, false), do: suite.scenarios

  def scenarios(suite, input) do
    Enum.filter(suite.scenarios, fn scenario -> scenario.input_name == input end)
  end

  def inputs(suite) do
    suite.configuration.inputs |> Enum.map(fn {name, _} -> name end)
  end

  def inputs?(suite), do: is_list(suite.configuration.inputs)

  def comparison?(suite), do: length(suite.scenarios) > 1

  def memory_usage?(suite), do: suite.configuration.memory_time > 0

  defp escape(string) do
    @html_entities |> Map.to_list() |> escape(string)
  end

  defp escape([], string), do: string

  defp escape([{pattern, replacement} | rest], string) do
    escape(rest, String.replace(string, pattern, replacement))
  end
end
