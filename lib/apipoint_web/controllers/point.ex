defmodule ApiPoint.Point do
  use ApipointWeb, :controller

  def index(conn, params) do
    IO.inspect "______GOT POST DATA________"
    IO.inspect params
    text conn, "ACCEPTED!!!"
  end
end
