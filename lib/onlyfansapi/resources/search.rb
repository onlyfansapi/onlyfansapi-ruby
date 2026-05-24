# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Search
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::SearchProfilesParams} for more details.
      #
      # Full-text search for profiles with filters for pricing, free trials, location,
      # media count and more.
      #
      # @overload profiles(cursor: nil, filter: nil, instagram: nil, limit: nil, location: nil, max_subscribe_price: nil, min_subscribe_price: nil, query: nil, sort: nil, sort_direction: nil, tiktok: nil, website: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. Use the `next_cursor` from the previous response to get t
      #
      # @param filter [Onlyfansapi::Models::SearchProfilesParams::Filter]
      #
      # @param instagram [String] Filter by Instagram username.
      #
      # @param limit [Integer] The number of profiles to return. For each returned profile we charge your accou
      #
      # @param location [String] Filter by location.
      #
      # @param max_subscribe_price [Float] Filter by maximum subscribe price. Must be at least 0.00.
      #
      # @param min_subscribe_price [Float] Filter by minimum subscribe price. Must be at least 0.00.
      #
      # @param query [String] Query for full text search in username, display name, bio. Must be at least 3 ch
      #
      # @param sort [Symbol, Onlyfansapi::Models::SearchProfilesParams::Sort] Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
      #
      # @param sort_direction [Symbol, Onlyfansapi::Models::SearchProfilesParams::SortDirection] Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      #
      # @param tiktok [String] Filter by TikTok username.
      #
      # @param website [String] Filter by website.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SearchProfilesResponse]
      #
      # @see Onlyfansapi::Models::SearchProfilesParams
      def profiles(params = {})
        parsed, options = Onlyfansapi::SearchProfilesParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/search",
          query: query.transform_keys(sort_direction: "sortDirection"),
          model: Onlyfansapi::Models::SearchProfilesResponse,
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
