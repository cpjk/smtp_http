defmodule Smtpex.API.EmailView do
  use Smtpex.Web, :view

  def render("api/index.json", %{emails: emails}) do
    %{data: render_many(emails, Smtpex.API.EmailView, "api/email.json")}
  end

  def render("api/show.json", %{email: email}) do
    %{data: render_one(email, Smtpex.API.EmailView, "api/email.json")}
  end

  def render("api/email.json", %{email: email}) do
    %{id: email.id,
      data: email.data,
      sender_email: email.sender_email,
      receiver_email: email.receiver_email}
  end
end
