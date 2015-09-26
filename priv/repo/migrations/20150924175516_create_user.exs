defmodule SensorApi.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :password, :string
      add :created_at, :string

      timestamps
    end

  end
end
