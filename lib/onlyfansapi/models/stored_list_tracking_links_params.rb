# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stored#list_tracking_links
    class StoredListTrackingLinksParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfansapi::Models::StoredListTrackingLinksParams::Filter, nil]
      optional :filter, -> { Onlyfansapi::StoredListTrackingLinksParams::Filter }

      # @!attribute limit
      #   The number of tracking links to return. Default `10`. Must be at least 1. Must
      #   not be greater than 1000.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::StoredListTrackingLinksParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Onlyfansapi::Models::StoredListTrackingLinksParams::Filter]
      #
      #   @param limit [Integer] The number of tracking links to return. Default `10`. Must be at least 1. Must n
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute include_smart_links
        #
        #   @return [Boolean, nil]
        optional :include_smart_links, Onlyfansapi::Internal::Type::Boolean

        # @!attribute search
        #   Must not be greater than 255 characters.
        #
        #   @return [String, nil]
        optional :search, String, nil?: true

        # @!attribute tags
        #   Must not be greater than 50 characters.
        #
        #   @return [Array<String>, nil]
        optional :tags, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!method initialize(include_smart_links: nil, search: nil, tags: nil)
        #   @param include_smart_links [Boolean]
        #
        #   @param search [String, nil] Must not be greater than 255 characters.
        #
        #   @param tags [Array<String>] Must not be greater than 50 characters.
      end
    end
  end
end
