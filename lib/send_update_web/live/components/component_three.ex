defmodule SendUpdateWeb.ComponentThree do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
      <div phx-hook="ComponentThree">Component Three</div>
    """
  end
end
