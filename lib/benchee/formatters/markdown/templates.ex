defmodule Benchee.Formatter.Markdown.Templates do
  @moduledoc false

  use Agent

  @templates ~w(
    comparison
    comparisons
    configuration
    input
    main
    scenario
    scenarios
    statistics
    system
    memory_usage
    memory_usages
  )a

  def start_link(opts) do
    Agent.start_link(
      fn -> opts |> Map.get(:templates) |> defaults() end,
      name: __MODULE__
    )
  end

  def render(name, bindings \\ [], opts \\ []) do
    name
    |> template()
    |> EEx.eval_file(bindings, Keyword.put_new(opts, :trim, true))
  end

  defp template(name) do
    Agent.get(__MODULE__, fn templates -> Map.fetch!(templates, name) end)
  end

  defp defaults(nil), do: defaults(%{})

  defp defaults(templates), do: Enum.reduce(@templates, templates, &default_put_new/2)

  defp default_put_new(key, templates) do
    Map.put_new(
      templates,
      key,
      Path.join(
        :code.priv_dir(:benchee_markdown),
        Atom.to_string(key) <> ".eex"
      )
    )
  end
end
