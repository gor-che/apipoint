defmodule Apipoint.Repo do
  use Ecto.Repo,
    otp_app: :apipoint,
    adapter: Ecto.Adapters.Postgres
end
