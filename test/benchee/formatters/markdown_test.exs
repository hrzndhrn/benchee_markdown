defmodule Benchee.Formatters.MarkdownTest do
  use ExUnit.Case, async: true
  doctest Benchee.Formatters.Markdown

  alias Benchee.Formatters.Markdown
  alias Benchee.Suite

  describe "format/1" do
    test "raises an exception if there is no file configured" do
      assert_raise RuntimeError, fn ->
        Markdown.format(%Suite{}, %{})
      end
    end
  end
end
