# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stored#list_trial_links
    class StoredListTrialLinksParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter_include_smart_links
      #   Include trial links created by Smart Links. Default `false`
      #
      #   @return [Boolean, nil]
      optional :filter_include_smart_links, Onlyfansapi::Internal::Type::Boolean

      # @!attribute filter_search
      #   Search trial link name or URL.
      #
      #   @return [String, nil]
      optional :filter_search, String

      # @!attribute filter_tags
      #   Filter by one or more tag names or slugs. Accepts CSV or repeated array values
      #   (`filter[tags][]=...`) and matches any tag.
      #
      #   @return [String, nil]
      optional :filter_tags, String

      # @!attribute limit
      #   The number of trial links to return. Default `10`
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(account:, filter_include_smart_links: nil, filter_search: nil, filter_tags: nil, limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::StoredListTrialLinksParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter_include_smart_links [Boolean] Include trial links created by Smart Links. Default `false`
      #
      #   @param filter_search [String] Search trial link name or URL.
      #
      #   @param filter_tags [String] Filter by one or more tag names or slugs. Accepts CSV or repeated array values (
      #
      #   @param limit [Integer] The number of trial links to return. Default `10`
      #
      #   @param offset [Integer] The offset used for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
