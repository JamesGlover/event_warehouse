# frozen_string_literal: true

# Lists of role types (Doubt this'll get much use)
class RoleTypesController < ApplicationController
  # Start with a base scope and pass to render_jsonapi
  def index
    role_types = RoleType.all
    render_jsonapi(role_types)
  end

  # Call jsonapi_scope directly here so we can get behavior like
  # sparse fieldsets and statistics.
  def show
    instance = RoleType.find_by(id: params[:id])
    raise JsonapiCompliable::Errors::RecordNotFound unless instance

    render_jsonapi(instance)
  end
end
