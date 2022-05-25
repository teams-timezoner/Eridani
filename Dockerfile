FROM elixir:1.13.4

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    mix local.hex --force && \
    mix local.rebar --force && \
    mix hex.info

WORKDIR /app

COPY mix.exs .
COPY mix.lock .

RUN mix deps.get

CMD ["mix", "phx.server"]