# frozen_string_literal: true

# Basic controller
class ApplicationController < ActionController::API
 # include JsonapiSuite::ControllerMixin

  def jsonapi_pagination(_collection)
    {
      first: 'hello',
      last: '',
      prev: '',
      next: ''
    }
  end

  def render_jsonapi(resources)
    render jsonapi: resources,
           include: params[:include],
           fields: params[:fields]
  end
end
