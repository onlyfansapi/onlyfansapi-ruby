# frozen_string_literal: true

module Onlyfans
  module Resources
    class Stored
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::StoredListSharedTrackingLinksParams} for more details.
      #
      # List all shared Tracking Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_shared_tracking_links(account, filter: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::StoredListSharedTrackingLinksParams::Filter]
      #
      # @param limit [Integer] The number of shared tracking links to return. Default `10`. Must be at least 1.
      #
      # @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse]
      #
      # @see Onlyfans::Models::StoredListSharedTrackingLinksParams
      def list_shared_tracking_links(account, params = {})
        parsed, options = Onlyfans::StoredListSharedTrackingLinksParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/shared-tracking-links", account],
          query: query,
          model: Onlyfans::Models::StoredListSharedTrackingLinksResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::StoredListSharedTrialLinksParams} for more details.
      #
      # List all shared Free Trial Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_shared_trial_links(account, filter: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::StoredListSharedTrialLinksParams::Filter]
      #
      # @param limit [Integer] The number of shared trial links to return. Default `10`. Must be at least 1. Mu
      #
      # @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoredListSharedTrialLinksResponse]
      #
      # @see Onlyfans::Models::StoredListSharedTrialLinksParams
      def list_shared_trial_links(account, params = {})
        parsed, options = Onlyfans::StoredListSharedTrialLinksParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/shared-trial-links", account],
          query: query,
          model: Onlyfans::Models::StoredListSharedTrialLinksResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::StoredListTrackingLinksParams} for more details.
      #
      # List all stored tracking links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_tracking_links(account, filter: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::StoredListTrackingLinksParams::Filter]
      #
      # @param limit [Integer] The number of tracking links to return. Default `10`. Must be at least 1. Must n
      #
      # @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoredListTrackingLinksResponse]
      #
      # @see Onlyfans::Models::StoredListTrackingLinksParams
      def list_tracking_links(account, params = {})
        parsed, options = Onlyfans::StoredListTrackingLinksParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/tracking-links", account],
          query: query,
          model: Onlyfans::Models::StoredListTrackingLinksResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::StoredListTrialLinksParams} for more details.
      #
      # List all stored free trial links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      #
      # @overload list_trial_links(account, filter: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::StoredListTrialLinksParams::Filter]
      #
      # @param limit [Integer] The number of trial links to return. Default `10`. Must be at least 1. Must not
      #
      # @param offset [Integer] The offset used for pagination. Default `0`. Must be at least 0.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoredListTrialLinksResponse]
      #
      # @see Onlyfans::Models::StoredListTrialLinksParams
      def list_trial_links(account, params = {})
        parsed, options = Onlyfans::StoredListTrialLinksParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stored/trial-links", account],
          query: query,
          model: Onlyfans::Models::StoredListTrialLinksResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
