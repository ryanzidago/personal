defmodule PersonalWeb.Components.AboutMe do
  use Phoenix.Component

  def render(assigns) do
    ~H"""
    <div class="md:grid md:grid-cols-7 pb-10">
      <div class="col-span-2" />
      <section class="col-span-3 flex flex-row gap-4 mt-20 md:p-0 p-10">
        <img
          class="block mx-auto h-24 rounded-full sm:mx-0 sm:shrink-0"
          src="/images/profile.jpg"
          alt="Ryan Zidago's profile picture"
        />
        <div class="">
          <header class="font-semibold">Ryan Zidago</header>
          <p class="text-sm drop-shadow-2xl">
            I'm a software engineer with experience building products for enterprise customers.
          </p>
          <p class="text-sm drop-shadow-2xl">
            Reach me out on <.link href="https://www.linkedin.com/in/ryan-zidago/">LinkedIn</.link>
            or at <.link href="ryan.zidago@protonmail.com">ryan.zidago@protonmail.com</.link>.
          </p>
        </div>
      </section>
      <div class="col-span-2" />
    </div>
    """
  end
end
