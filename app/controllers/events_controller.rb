# frozen_string_literal: true

# Lists of events
class EventsController < ApplicationController
  # Start with a base scope and pass to render_jsonapi
  def index
    events = Event.all
    render_jsonapi(events)
  end

  # Call jsonapi_scope directly here so we can get behavior like
  # sparse fieldsets and statistics.
  def show
    instance = Event.find_by(id: params[:id])
    raise JsonapiCompliable::Errors::RecordNotFound unless instance

    render_jsonapi(instance)
  end
end
