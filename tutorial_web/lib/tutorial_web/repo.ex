defmodule TutorialWeb.Repo do
  use Ecto.Repo,
    otp_app: :tutorial_web,
    adapter: Ecto.Adapters.Postgres
end
