defmodule FormatParserTest do
  use ExUnit.Case
  doctest FormatParser

  test "jpeg" do
    {:ok, file} = File.read("priv/test.jpg")

    assert FormatParser.parse(file).format == :jpg
    assert FormatParser.parse(file).nature == :image
  end

  test "cr2" do
    {:ok, file} = File.read("priv/test.cr2")

    assert FormatParser.parse(file).format == :cr2
    assert FormatParser.parse(file).nature == :image
  end

  test "ico" do
    {:ok, file} = File.read("priv/test.ico")

    assert FormatParser.parse(file).format == :ico
    assert FormatParser.parse(file).nature == :image
  end

  test "rtf" do
    {:ok, file} = File.read("priv/test.rtf")

    assert FormatParser.parse(file).format == :rtf
    assert FormatParser.parse(file).nature == :document
  end

  test "tif" do
    {:ok, file} = File.read("priv/test.tif")

    assert FormatParser.parse(file).format == :tif
    assert FormatParser.parse(file).nature == :image
  end

  test "bmp" do
    {:ok, file} = File.read("priv/test.bmp")

    assert FormatParser.parse(file).format == :bmp
    assert FormatParser.parse(file).nature == :image
  end

  test "png" do
    {:ok, file} = File.read("priv/test.png")

    assert FormatParser.parse(file).format == :png
    assert FormatParser.parse(file).nature == :image
    assert FormatParser.parse(file).width_px == 300
    assert FormatParser.parse(file).height_px == 300
    assert FormatParser.parse(file).orientation == nil
  end
end
