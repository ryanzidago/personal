defmodule PersonalWeb.PageController do
  use PersonalWeb, :controller

  alias Personal.Blog

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false, posts: Blog.list_posts())
  end

  def about_me(conn, _params) do
    render(conn, :about_me)
  end

  def post(conn, %{"slug" => slug}) do
    case Blog.find_post_by_slug(slug) do
      {:ok, post} -> render(conn, :post, post: post)
      {:error, :not_found} -> render(conn, "404.html", status: 404)
    end
  end
end
