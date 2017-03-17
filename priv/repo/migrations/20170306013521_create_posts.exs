defmodule HPlateApi.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :integer
      add :posted_at, :utc_datetime
    end
  end
end
