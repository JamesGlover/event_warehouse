# frozen_string_literal: true

# Lists of subjects (Doubt this'll get much use)
class SubjectsController < ApplicationController
  # Start with a base scope and pass to render_jsonapi
  def index
    subjects = Subject.all
    render_jsonapi(subjects)
  end

  # Call jsonapi_scope directly here so we can get behavior like
  # sparse fieldsets and statistics.
  def show
    instance = Subject.find_by(id: params[:id])
    raise JsonapiCompliable::Errors::RecordNotFound unless instance

    render_jsonapi(instance)
  end
end
