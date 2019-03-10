defmodule Benchee.Formatter.Markdown.Helpers do
  @moduledoc false

  alias Benchee.Conversion
  alias Benchee.Conversion.Duration
  alias Benchee.Conversion.Memory
  alias Benchee.Formatters.Console.Helpers

  defdelegate count_output(count, unit), to: Helpers

  defdelegate deviation_output(devitation), to: Helpers

  def duration_output(duration, unit),
    do: Duration.format({Duration.scale(duration, unit), unit})

  def comparsion?(suite), do: length(suite.scenarios) > 1

  def memory_usage?(suite), do: suite.configuration.memory_time > 0

  def memory_output(memory, unit),
    do: Memory.format({Memory.scale(memory, unit), unit})

  def units(scenarios, suite),
    do: Conversion.units(scenarios, suite.configuration.unit_scaling)

  def scenarios(suite, false), do: suite.scenarios

  def scenarios(suite, input),
    do:
      suite.scenarios
      |> Enum.filter(fn scenario -> scenario.input_name == input end)

  def inputs?(suite), do: is_list(suite.configuration.inputs)

  def inputs(suite),
    do: suite.configuration.inputs |> Enum.map(fn {name, _} -> name end)
end
