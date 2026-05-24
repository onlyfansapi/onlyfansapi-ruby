# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrackingLinks#create
    class TrackingLinkCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute name
      #   The name of the Tracking Link
      #
      #   @return [String]
      required :name, String

      # @!attribute tags
      #   Array of tag names to add to the tracking link.
      #
      #   @return [Array<String>, nil]
      optional :tags, Onlyfansapi::Internal::Type::ArrayOf[String]

      # @!method initialize(account:, name:, tags: nil, request_options: {})
      #   @param account [String]
      #
      #   @param name [String] The name of the Tracking Link
      #
      #   @param tags [Array<String>] Array of tag names to add to the tracking link.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
