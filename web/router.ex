defmodule Smtpex.Router do
  use Smtpex.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    # plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Smtpex do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/emails", EmailController
  end

  scope "/api", Smtpex do
    pipe_through :api
    resources "/emails", API.EmailController, except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
end
