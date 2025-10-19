defmodule Formatters.MarkdownIntegrationTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias Benchee.Formatters

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
        reduction_time: 0.01,
        warmup: 0.02,
        print: [fast_warning: false],
        title: "My Benchmark",
        formatters: [
          {Formatters.Markdown, file: @file_path},
          Formatters.Console
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
        reduction_time: 0.01,
        warmup: 0.02,
        print: [fast_warning: false],
        formatters: [
          {Formatters.Markdown, file: @file_path},
          Formatters.Console
        ]
      )
    end)

    assert File.exists?(@file_path)
  after
    File.rm(@file_path)
  end

  test "renders just fine with inputs" do
    inputs = %{
      "short_list" => Enum.to_list(1..10),
      "long_list" => Enum.to_list(1..10_000)
    }

    map_fun = fn i -> [i, i * i] end

    capture_io(fn ->
      result =
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
            Formatters.Console
          ]
        )

      markdown = Formatters.Markdown.render(result, title: :none)
      refute markdown =~ "# Benchmark"
      assert markdown =~ "Benchmark run"
    end)
  end

  test "renders just fine for livebook" do
    inputs = %{
      "short_list" => Enum.to_list(1..10),
      "long_list" => Enum.to_list(1..10_000)
    }

    map_fun = fn i -> [i, i * i] end

    capture_io(fn ->
      result =
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
            Formatters.Console
          ]
        )

      markdown = Formatters.Markdown.render(result, livebook: true)
      assert String.starts_with?(markdown, "__Input:")
    end)
  end
end
