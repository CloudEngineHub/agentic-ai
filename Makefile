.PHONY: serve build lint fmt clean

serve:
	uv run zensical serve

build:
	uv run zensical build --clean

lint:
	uv run rumdl check --disable MD013,MD033,MD041,MD045 docs/

fmt:
	uv run rumdl fmt --disable MD013,MD033,MD041,MD045 docs/

clean:
	rm -rf site/
