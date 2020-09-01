# frozen_string_literal: true

# Handles subject types.
class SubjectTypesController < ApplicationController
  # Start with a base scope and pass to render_jsonapi
  def index
    subject_types = SubjectType.all
    render_jsonapi(subject_types)
  end

  # Call jsonapi_scope directly here so we can get behavior like
  # sparse fieldsets and statistics.
  def show
    instance = SubjectType.find_by(id: params[:id])
    raise JsonapiCompliable::Errors::RecordNotFound unless instance

    render_jsonapi(instance)
  end
end
