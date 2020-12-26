defmodule ExTwitter.Repo do
  use Ecto.Repo,
    otp_app: :ex_twitter,
    adapter: Ecto.Adapters.Postgres
end
