# frozen_string_literal: true

GIT_BRANCH = `git rev-parse --abbrev-ref HEAD`.strip.freeze
