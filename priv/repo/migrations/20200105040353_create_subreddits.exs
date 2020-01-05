defmodule Subreddits.Repo.Migrations.CreateSubreddits do
  use Ecto.Migration

  def change do
    create table(:subreddits) do
      add :name, :string
      add :url, :string
      add :last_scraped, :utc_datetime
    end
  end
end
