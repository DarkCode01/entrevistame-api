defmodule EntrevistameApi.Repo do
  use Ecto.Repo,
    otp_app: :entrevistame_api,
    adapter: Ecto.Adapters.Postgres
end
