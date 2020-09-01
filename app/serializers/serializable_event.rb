# frozen_string_literal: true

# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableEvent < JSONAPI::Serializable::Resource
  type :events

  # Add attributes here to ensure they get rendered, .e.g.
  #
  # attribute :name
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end
  attribute :occured_at
  attribute :user_identifier
  attribute :lims_id
  attribute :metadata

  belongs_to :event_type

  has_many :roles
  has_many :subjects
end
