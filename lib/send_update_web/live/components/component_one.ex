defmodule SendUpdateWeb.ComponentOne do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
      <div phx-hook="ComponentOne">Component One</div>
    """
  end
end
