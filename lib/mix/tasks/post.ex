defmodule Mix.Tasks.Gen.Post do
  use Mix.Task

  @priv_dir :code.priv_dir(:personal)

  @impl Mix.Task
  def run(args) do
    {filename, date} =
      case args do
        [filename] -> {filename, Date.to_iso8601(Date.utc_today())}
        [filename, date] -> {filename, date}
        _ -> raise "Unexpected arguments: #{inspect(args)}"
      end

    filename =
      "#{@priv_dir}/posts/#{date}-#{filename}.md"
      |> String.trim()
      |> String.downcase()

    if File.exists?(filename) do
      raise("Post already exists: #{filename}.md")
    else
      File.write!(filename, default_metadata(date), [:open, :write])
      IO.puts("Created post: #{filename}.md")
    end
  end

  defp default_metadata(date) do
    """
    ---
    title:
    description:
    date: #{date}
    tags: []
    published: false
    ---
    """
  end
end
