defmodule Personal.Blog.Post do
  @type t :: %__MODULE__{
          slug: String.t(),
          title: String.t(),
          body: String.t(),
          description: String.t(),
          date: Date.t(),
          tags: [String.t()],
          published: boolean()
        }

  defstruct [
    :slug,
    :title,
    :body,
    :description,
    :date,
    tags: [],
    author: "Ryan Zidago",
    published: false
  ]

  @spec parse!(String.t()) :: t()
  def parse!(filename) when is_binary(filename) do
    [metadata, body] =
      filename
      |> File.read!()
      |> String.split("---", trim: true, parts: 2)

    metadata = parse_metadata(metadata)

    struct!(
      __MODULE__,
      slug: Path.basename(filename, ".md"),
      body: Earmark.as_html!(body),
      description: metadata["description"],
      tags: metadata["tags"],
      title: metadata["title"],
      date: metadata["date"],
      published: metadata["published"]
    )
  end

  defp parse_metadata(metadata) do
    metadata
    |> String.split("\n", trim: true)
    |> Enum.reduce(%{}, fn line, acc ->
      {key, value} =
        case String.split(line, ":", trim: true, parts: 2) do
          ["tags", value] -> {"tags", parse_tags(value)}
          ["date", value] -> {"date", Date.from_iso8601!(String.trim(value))}
          ["published", value] -> {"published", String.trim(value) == "true"}
          [key, value] -> {key, String.trim(value)}
        end

      Map.put(acc, key, value)
    end)
  end

  defp parse_tags(tags) do
    tags
    |> String.replace(~r/[\[\]"']/, "")
    |> String.downcase()
    |> String.split(",")
    |> Enum.map(&String.trim/1)
  end
end
