defmodule Odyssey.Subreddit do
  use Ecto.Schema

  schema "subreddits" do
    field :name, :string
    field :url, :string
    field :last_scraped, :utc_datetime
  end

  def changeset(subreddit, params \\ %{}) do
    subreddit
    |> Ecto.Changeset.cast(params, [:name, :url, :last_scraped])
    |> Ecto.Changeset.validate_required([:name, :url])
  end
end