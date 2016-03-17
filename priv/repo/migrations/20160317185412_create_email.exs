defmodule Smtpex.Repo.Migrations.CreateEmail do
  use Ecto.Migration

  def change do
    create table(:emails) do
      add :data, :string
      add :sender_email, :string
      add :receiver_email, :string

      timestamps
    end

  end
end
