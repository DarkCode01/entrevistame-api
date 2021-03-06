defmodule EntrevistameApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :string
      add :name, :string
      add :login, :string
      add :image, :string
      add :password, :string

      timestamps()
    end

  end
end
