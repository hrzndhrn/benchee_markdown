defmodule Benchee.Formatters.MarkdownIntegrationTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  @file_path "test.md"

  test "works just fine" do
    list = Enum.to_list(1..10_000)
    map_fun = fn i -> [i, i * i] end

    capture_io(fn ->
      Benchee.run(
        %{
          "flat_map" => fn -> Enum.flat_map(list, map_fun) end,
          "map.flatten" => fn -> list |> Enum.map(map_fun) |> List.flatten() end
        },
        time: 0.01,
        memory_time: 0.01,
        warmup: 0.02,
        print: [fast_warning: false],
        title: "My Benchmark",
        formatters: [
          {Benchee.Formatters.Markdown, file: @file_path},
          Benchee.Formatters.Console
        ]
      )
    end)

    assert File.exists?(@file_path)
  after
    File.rm(@file_path)
  end

  test "works just fine with inputs" do
    inputs = %{
      "short_list" => Enum.to_list(1..10),
      "long_list" => Enum.to_list(1..10_000)
    }

    map_fun = fn i -> [i, i * i] end

    capture_io(fn ->
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
          {Benchee.Formatters.Markdown, file: @file_path},
          Benchee.Formatters.Console
        ]
      )
    end)

    assert File.exists?(@file_path)
  after
    File.rm(@file_path)
  end

  test "doesn't blow up with no data collected" do
    capture_io(fn ->
      assert %Benchee.Suite{} =
               Benchee.run(
                 %{
                   "Sleep" => fn -> :timer.sleep(1) end
                 },
                 time: 0,
                 warmup: 0,
                 memory_time: 0
               )
    end)
  after
    File.rm(@file_path)
  end
end
