map_fun = fn i -> [i, i * i] end

Benchee.run(
  %{
    "flat_map" => fn ->
      1..10_000 |> Enum.to_list() |> Enum.flat_map(map_fun)
    end,
    "map.flatten" => fn ->
      1..10_000 |> Enum.to_list() |> Enum.map(map_fun) |> List.flatten()
    end
  },
  title: "Benchmark Example",
  time: 0.01,
  memory_time: 0.01,
  warmup: 0.02,
  print: [fast_warning: false],
  formatters: [
    {Benchee.Formatters.Markdown, file: "bench/basic/README.md"},
    Benchee.Formatters.Console
  ]
)
