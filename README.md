# SensorApi

To start your Phoenix app:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Tutorials used

REST API: https://renatomoya.github.io/2015/05/09/Building-a-versioned-REST-API-with-Phoenix-Framework.html
Ecto-Models: http://www.phoenixframework.org/docs/ecto-models

## Testing with cURL

Fetching all users: `GET /v1/users`

    curl http://localhost:4000/v1/users

Create new user: `POST /v1/user`

    curl -X POST -H "Content-Type: application/json" -d '{"user": {"email": "bla@fasel.de", "password": "test"}}' http://localhost:4000/v1/users


## Learn more about Elixir

  * Official website: http://elixir-lang.org
  * Getting started: http://elixir-lang.org/getting-started/introduction.html
  * Docs: http://elixir-lang.org/docs.html
  * Source: https://github.com/elixir-lang/elixir

## Learn more about Phoenix Framework

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
