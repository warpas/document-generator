defmodule DocumentGeneratorWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  # channel "room:*", DocumentGeneratorWeb.RoomChannel

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
