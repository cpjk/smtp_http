defmodule Smtpex.Email do
  use Smtpex.Web, :model

  schema "emails" do
    field :data, :string
    field :sender_email, :string
    field :receiver_email, :string

    timestamps
  end

  @required_fields ~w(data sender_email receiver_email)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
