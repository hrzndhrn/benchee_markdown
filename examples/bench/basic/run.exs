inputs = %{
  "short_list" => Enum.to_list(1..10),
  "long_list" => Enum.to_list(1..10_000)
}

map_fun = fn i -> [i, i * i] end

Benchee.run(
  %{
    "flat_map" => fn list -> Enum.flat_map(list, map_fun) end,
    "map.flatten" => fn list ->
      list |> Enum.map(map_fun) |> List.flatten()
    end
  },
  inputs: inputs,
  time: 0.01,
  memory_time: 0.01,
  warmup: 0.02,
  print: [fast_warning: false],
  formatters: [
    {Benchee.Formatters.Markdown, file: "bench/basic/README.md"},
    Benchee.Formatters.Console
  ]
)
