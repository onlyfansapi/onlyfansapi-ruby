# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stored#list_shared_tracking_links
    class StoredListSharedTrackingLinksParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter_search
      #   Search campaign name, owner username, or a pasted OnlyFans tracking link URL.
      #
      #   @return [String, nil]
      optional :filter_search, String

      # @!attribute filter_tags
      #   Filter by one or more tag names or slugs. Accepts CSV or repeated array values
      #   (`filter[tags][]=...`) and matches any tag. Tag namespace is shared with owned
      #   Tracking Links.
      #
      #   @return [String, nil]
      optional :filter_tags, String

      # @!attribute limit
      #   The number of shared tracking links to return. Default `10`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account:, filter_search: nil, filter_tags: nil, limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::StoredListSharedTrackingLinksParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter_search [String] Search campaign name, owner username, or a pasted OnlyFans tracking link URL.
      #
      #   @param filter_tags [String] Filter by one or more tag names or slugs. Accepts CSV or repeated array values (
      #
      #   @param limit [Integer] The number of shared tracking links to return. Default `10`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
