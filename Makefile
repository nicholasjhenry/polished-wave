define ANNOUNCE_BODY

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server
endef

export ANNOUNCE_BODY

setup:
	mix deps.get
	mix deps.compile
	cd apps/polished_wave_web/assets && npm install && node node_modules/webpack/bin/webpack.js --mode development
	@echo "$$ANNOUNCE_BODY"

