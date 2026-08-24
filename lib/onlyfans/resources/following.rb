# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing OnlyFans followings (people you're subscribed to)
    class Following
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FollowingListActiveParams} for more details.
      #
      # Get a paginated list of followings for an Account. By default OnlyFans returns
      # this list newest-first, sorted by `subscribedByData.subscribeAt` descending. The
      # expired list does not share this order, so do not assume it applies there. Pass
      # `sort` (optionally with `sortDirection`) to reorder the list — see the parameter
      # description for the caveat that OnlyFans persists the chosen order account-wide.
      #
      # @overload list_active(account, filter: nil, limit: nil, offset: nil, query: nil, sort: nil, sort_direction: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::FollowingListActiveParams::Filter]
      #
      # @param limit [Integer] Number of followings to return (1-50). Must be at least 1. Must not be greater t
      #
      # @param offset [Integer] Pagination offset. Must be at least 0.
      #
      # @param query [String, nil] Search within following name/username.
      #
      # @param sort [Symbol, Onlyfans::Models::FollowingListActiveParams::Sort, nil] Order the list by `last_activity` (the followed creator's last activity), `expir
      #
      # @param sort_direction [Symbol, Onlyfans::Models::FollowingListActiveParams::SortDirection, nil] Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FollowingListActiveResponse]
      #
      # @see Onlyfans::Models::FollowingListActiveParams
      def list_active(account, params = {})
        parsed, options = Onlyfans::FollowingListActiveParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/following/active", account],
          query: query.transform_keys(sort_direction: "sortDirection"),
          model: Onlyfans::Models::FollowingListActiveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FollowingListAllParams} for more details.
      #
      # Get a paginated list of followings for an Account. By default OnlyFans returns
      # this list newest-first, sorted by `subscribedByData.subscribeAt` descending. The
      # expired list does not share this order, so do not assume it applies there. Pass
      # `sort` (optionally with `sortDirection`) to reorder the list — see the parameter
      # description for the caveat that OnlyFans persists the chosen order account-wide.
      #
      # @overload list_all(account, filter: nil, limit: nil, offset: nil, query: nil, sort: nil, sort_direction: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::FollowingListAllParams::Filter]
      #
      # @param limit [Integer] Number of followings to return (1-50). Must be at least 1. Must not be greater t
      #
      # @param offset [Integer] Pagination offset. Must be at least 0.
      #
      # @param query [String, nil] Search within following name/username.
      #
      # @param sort [Symbol, Onlyfans::Models::FollowingListAllParams::Sort, nil] Order the list by `last_activity` (the followed creator's last activity), `expir
      #
      # @param sort_direction [Symbol, Onlyfans::Models::FollowingListAllParams::SortDirection, nil] Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FollowingListAllResponse]
      #
      # @see Onlyfans::Models::FollowingListAllParams
      def list_all(account, params = {})
        parsed, options = Onlyfans::FollowingListAllParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/following/all", account],
          query: query.transform_keys(sort_direction: "sortDirection"),
          model: Onlyfans::Models::FollowingListAllResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FollowingListExpiredParams} for more details.
      #
      # Get a paginated list of expired followings for an Account. This list has no
      # order guarantee. Unlike the all and active lists, it is sorted by neither
      # `subscribedByData.subscribeAt` nor `subscribedByData.expiredAt`. To poll for new
      # expirations, page through the full list each cycle (`limit=50`, follow
      # `_pagination.next_page` until it is null) and diff it against your own store
      # using `subscribedByData.expiredAt`. Do NOT stop early at the first entry you
      # have already seen, as that can silently skip real expirations. Pass
      # `sort=expire_date` (optionally with `sortDirection`) to get a deterministic
      # order instead — see the parameter description for the caveat that OnlyFans
      # persists the chosen order account-wide.
      #
      # @overload list_expired(account, filter: nil, limit: nil, offset: nil, query: nil, sort: nil, sort_direction: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::FollowingListExpiredParams::Filter]
      #
      # @param limit [Integer] Number of followings to return (1-50). Must be at least 1. Must not be greater t
      #
      # @param offset [Integer] Pagination offset. Must be at least 0.
      #
      # @param query [String, nil] Search within following name/username.
      #
      # @param sort [Symbol, Onlyfans::Models::FollowingListExpiredParams::Sort, nil] Order the list by `last_activity` (the followed creator's last activity), `expir
      #
      # @param sort_direction [Symbol, Onlyfans::Models::FollowingListExpiredParams::SortDirection, nil] Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FollowingListExpiredResponse]
      #
      # @see Onlyfans::Models::FollowingListExpiredParams
      def list_expired(account, params = {})
        parsed, options = Onlyfans::FollowingListExpiredParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/following/expired", account],
          query: query.transform_keys(sort_direction: "sortDirection"),
          model: Onlyfans::Models::FollowingListExpiredResponse,
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
