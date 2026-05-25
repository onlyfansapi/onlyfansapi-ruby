# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Webhooks#delete
    class WebhookDeleteParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute webhook_id
      #
      #   @return [String]
      required :webhook_id, String

      # @!method initialize(webhook_id:, request_options: {})
      #   @param webhook_id [String]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
