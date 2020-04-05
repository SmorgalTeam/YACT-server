defmodule FractionServer.Repo do
  use Ecto.Repo,
    otp_app: :fraction_server,
    adapter: Ecto.Adapters.Postgres
end
