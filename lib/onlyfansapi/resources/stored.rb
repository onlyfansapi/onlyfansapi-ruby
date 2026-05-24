# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Stored
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::StoredListSharedTrackingLinksParams} for more details.
      #
      # List all shared Tracking Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_shared_tracking_links(account, filter_search: nil, filter_tags: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter_search [String] Search campaign name, owner username, or a pasted OnlyFans tracking link URL.
      #
      # @param filter_tags [String] Filter by one or more tag names or slugs. Accepts CSV or repeated array values (
      #
      # @param limit [Integer] The number of shared tracking links to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoredListSharedTrackingLinksResponse]
      #
      # @see Onlyfansapi::Models::StoredListSharedTrackingLinksParams
      def list_shared_tracking_links(account, params = {})
        parsed, options = Onlyfansapi::StoredListSharedTrackingLinksParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/shared-tracking-links", account],
          query: query.transform_keys(filter_search: "filter[search]", filter_tags: "filter[tags]"),
          model: Onlyfansapi::Models::StoredListSharedTrackingLinksResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::StoredListSharedTrialLinksParams} for more details.
      #
      # List all shared Free Trial Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_shared_trial_links(account, filter_search: nil, filter_tags: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter_search [String] Search shared trial link name, URL, or owner username.
      #
      # @param filter_tags [String] Filter by one or more tag names or slugs. Accepts CSV or repeated array values (
      #
      # @param limit [Integer] The number of shared trial links to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoredListSharedTrialLinksResponse]
      #
      # @see Onlyfansapi::Models::StoredListSharedTrialLinksParams
      def list_shared_trial_links(account, params = {})
        parsed, options = Onlyfansapi::StoredListSharedTrialLinksParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/shared-trial-links", account],
          query: query.transform_keys(filter_search: "filter[search]", filter_tags: "filter[tags]"),
          model: Onlyfansapi::Models::StoredListSharedTrialLinksResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::StoredListTrackingLinksParams} for more details.
      #
      # List all stored tracking links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_tracking_links(account, filter_include_smart_links: nil, filter_search: nil, filter_tags: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter_include_smart_links [Boolean] Include tracking links created by Smart Links. Default `false`
      #
      # @param filter_search [String] Search campaign name, creator username, or a pasted OnlyFans tracking link URL.
      #
      # @param filter_tags [String] Filter by one or more tag names or slugs. Accepts CSV or repeated array values (
      #
      # @param limit [Integer] The number of tracking links to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoredListTrackingLinksResponse]
      #
      # @see Onlyfansapi::Models::StoredListTrackingLinksParams
      def list_tracking_links(account, params = {})
        parsed, options = Onlyfansapi::StoredListTrackingLinksParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/tracking-links", account],
          query: query.transform_keys(
            filter_include_smart_links: "filter[include_smart_links]",
            filter_search: "filter[search]",
            filter_tags: "filter[tags]"
          ),
          model: Onlyfansapi::Models::StoredListTrackingLinksResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::StoredListTrialLinksParams} for more details.
      #
      # List all stored free trial links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_trial_links(account, filter_include_smart_links: nil, filter_search: nil, filter_tags: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter_include_smart_links [Boolean] Include trial links created by Smart Links. Default `false`
      #
      # @param filter_search [String] Search trial link name or URL.
      #
      # @param filter_tags [String] Filter by one or more tag names or slugs. Accepts CSV or repeated array values (
      #
      # @param limit [Integer] The number of trial links to return. Default `10`
      #
      # @param offset [Integer] The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoredListTrialLinksResponse]
      #
      # @see Onlyfansapi::Models::StoredListTrialLinksParams
      def list_trial_links(account, params = {})
        parsed, options = Onlyfansapi::StoredListTrialLinksParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/trial-links", account],
          query: query.transform_keys(
            filter_include_smart_links: "filter[include_smart_links]",
            filter_search: "filter[search]",
            filter_tags: "filter[tags]"
          ),
          model: Onlyfansapi::Models::StoredListTrialLinksResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
