defmodule SendUpdateWeb.ExampleLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
      <%= live_component @socket, SendUpdateWeb.ComponentOne, id: "ComponentOne" %>
      <%= live_component @socket, SendUpdateWeb.ComponentTwo, id: "ComponentTwo" %>
      <%= live_component @socket, SendUpdateWeb.ComponentThree, id: "ComponentThree" %>
      <span style="background: yellow"> `send_update(SendUpdateWeb.ComponentTwo, id: "ComponentTwo", example_assigns: "example")`, triggers all 3 components' updated() hook - check browser JS console<span>
    """
  end

  def mount(_session, socket) do
    send_update(SendUpdateWeb.ComponentTwo, id: "ComponentTwo", example_assigns: "example")
    {:ok, socket}
  end
end
