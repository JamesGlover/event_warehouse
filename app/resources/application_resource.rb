# frozen_string_literal: true

# Base class for JSON API resources
# A Resource defines how to query and persist your Model. In other words:
# a Model is to the database as Resource is to the API.
# https://jsonapi-suite.github.io/jsonapi_suite/concepts#resources
class ApplicationResource < JSONAPI::Resource
end
