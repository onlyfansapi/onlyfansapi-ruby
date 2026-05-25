# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#create
    class TrackingLinkCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      optional :tags, Onlyfans::Internal::Type::ArrayOf[String]

      # @!method initialize(account:, name:, tags: nil, request_options: {})
      #   @param account [String]
      #
      #   @param name [String] The name of the Tracking Link
      #
      #   @param tags [Array<String>] Array of tag names to add to the tracking link.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
