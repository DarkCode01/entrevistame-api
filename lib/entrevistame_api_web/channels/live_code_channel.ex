defmodule EntrevistameApiWeb.LiveCodeChannel do
  use EntrevistameApiWeb, :channel

  @impl true
  def join("live_code:" <> code, payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  @impl true
  def handle_in("shout", payload, socket) do
    broadcast socket, "shout", payload
    {:noreply, socket}
  end

  defp authorized?(_payload) do
    true
  end
end
