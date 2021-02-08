default: bundle

guard-%:
	@if [ -z "${${*}}" ]; then echo "REQUIRED env-var $* not set" && exit 1; fi

shasumExec := $(shell { command -v sha256sum || command -v sha1 || command -v shasum || command -v sha1sum; })
websiteuri := $(shell { \cat _config.yml | yq e '.url' -; })
baseurl := $(shell { \cat _config.yml | yq e '.baseurl' -; })


# https://www.npmjs.com/package/eclint

.PHONY: open-site
open-site:
	./bin/open-browser.py ${websiteuri}${baseurl}/

bundle:
	bundle install

test:
	bundle install --with test

test-jekyll:
	bundle install --with jekyll-plugins

jekyll:
	bundle exec jekyll serve

jekyll-watch:
	bundle exec jekyll serve --watch

serve-watch: jekyll-watch

jekyll-watch-drafts:
	bundle exec jekyll serve --watch --drafts

# # load ALL other makefiles in ./scripts/make/*
# THIS_FILE := $(lastword $(MAKEFILE_LIST))
# THIS_FILE_DIR := $(dir ${THIS_FILE})
# include ${THIS_FILE_DIR}/scripts/make/*.mk

install-editor-conig-lint:
	npm install -g eclint

bespec:
	bundle exec rspec

update-bundler:
	gem update bundler

biv:
	gem update --system
	bundle config build.ffi --enable-system-libffi
	env NOKOGIRI_USE_SYSTEM_LIBRARIES=true bundle install --path .vendor
	rbenv rehash

cspec:
	bundle exec rspec --color --format documentation

lint-fix:
	eclint fix *
