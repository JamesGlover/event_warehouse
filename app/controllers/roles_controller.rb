# frozen_string_literal: true

# Lists of roles
class RolesController < ApplicationController
  # Start with a base scope and pass to render_jsonapi
  def index
    roles = Role.all
    render_jsonapi(roles)
  end

  # Call jsonapi_scope directly here so we can get behavior like
  # sparse fieldsets and statistics.
  def show
    instance = Role.find_by(id: params[:id])
    raise JsonapiCompliable::Errors::RecordNotFound unless instance

    render_jsonapi(instance)
  end
end
