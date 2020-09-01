# frozen_string_literal: true

JsonapiSpecHelpers::Payload.register(:event) do
  key(:lims_id, String, description: 'Short identifier indicating the originating lims')
  key(:occured_at, String, description: 'Time at which the event occurred (ISO 8601)')
  key(:user_identifier, String, description: 'A unique identifier for the user who performed the event,
  such as an email address')
  key(:metadata, Hash, description: 'Detailed information about the event.')
end
