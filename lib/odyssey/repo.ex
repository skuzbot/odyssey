defmodule Odyssey.Repo do
  use Ecto.Repo,
    otp_app: :odyssey,
    adapter: Ecto.Adapters.Postgres
end
