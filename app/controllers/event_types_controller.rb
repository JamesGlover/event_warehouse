# frozen_string_literal: true

# List event types
class EventTypesController < ApplicationController
  def index
    render_jsonapi(EventType.all)
  end

  def show
    instance = EventType.find_by(id: params[:id])

    render_jsonapi(instance)
  end
end
