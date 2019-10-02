defmodule CalorieTracker.Repo do
  use Ecto.Repo,
    otp_app: :calorieTracker,
    adapter: Ecto.Adapters.Postgres
end
