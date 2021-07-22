defmodule ApiPointWeb.SocketChannel do
  require Logger
  use Phoenix.Channel

  def join("info", payload, socket) do
    {:ok, socket}
  end  
end
