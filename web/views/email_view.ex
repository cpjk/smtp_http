defmodule Smtpex.EmailView do
  use Smtpex.Web, :view

  def render("index.json", %{emails: emails}) do
    %{data: render_many(emails, Smtpex.EmailView, "email.json")}
  end

  def render("show.json", %{email: email}) do
    %{data: render_one(email, Smtpex.EmailView, "email.json")}
  end

  def render("email.json", %{email: email}) do
    %{id: email.id,
      data: email.data,
      sender_email: email.sender_email,
      receiver_email: email.receiver_email}
  end
end
