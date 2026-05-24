# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Webhooks#list_events
    class WebhookListEventsParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
