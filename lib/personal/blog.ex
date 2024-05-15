defmodule Personal.Blog do
  alias Personal.Blog.Post

  Enum.all?([:earmark, :makeup_elixir], &Application.ensure_all_started/1)
  @priv_dir :code.priv_dir(:personal)
  @path "#{@priv_dir}/**/*.md"

  @posts @path
         |> Path.wildcard()
         |> Enum.map(fn post_path ->
           @external_resource Path.relative_to_cwd(post_path)
           Post.parse!(post_path)
         end)
         |> Enum.filter(& &1.published)
         |> Enum.sort_by(& &1.title)
         |> Enum.sort_by(& &1.date, {:desc, Date})

  @spec list_posts() :: [Post.t()]
  def list_posts do
    @posts
  end

  @spec find_post_by_slug(String.t()) :: {:ok, Post.t()} | {:error, :not_found}
  def find_post_by_slug(slug) when is_binary(slug) do
    case Enum.find(list_posts(), &(&1.slug == slug)) do
      %Post{} = post -> {:ok, post}
      nil -> {:error, :not_found}
    end
  end
end
