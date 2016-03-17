defmodule Smtpex.EmailTest do
  use Smtpex.ModelCase

  alias Smtpex.Email

  @valid_attrs %{data: "some content", receiver_email: "some content", sender_email: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Email.changeset(%Email{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Email.changeset(%Email{}, @invalid_attrs)
    refute changeset.valid?
  end
end
