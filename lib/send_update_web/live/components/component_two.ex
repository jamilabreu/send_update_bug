defmodule SendUpdateWeb.ComponentTwo do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
      <div phx-hook="ComponentTwo">Component Two</div>
    """
  end
end
