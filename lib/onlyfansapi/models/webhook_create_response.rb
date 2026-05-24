# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Webhooks#create
    class WebhookCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute events
      #
      #   @return [Array<String>, nil]
      optional :events, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!attribute has_signing_secret
      #
      #   @return [Boolean, nil]
      optional :has_signing_secret, Onlyfansapi::Internal::Type::Boolean

      # @!attribute url
      #
      #   @return [String, nil]
      optional :url, String

      # @!method initialize(id: nil, created_at: nil, events: nil, has_signing_secret: nil, url: nil)
      #   @param id [String]
      #   @param created_at [String]
      #   @param events [Array<String>]
      #   @param has_signing_secret [Boolean]
      #   @param url [String]
    end
  end
end
