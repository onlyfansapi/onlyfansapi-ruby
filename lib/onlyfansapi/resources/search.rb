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
      # @overload profiles(query:, limit: nil, location: nil, max_subscribe_price: nil, min_subscribe_price: nil, request_options: {})
      #
      # @param query [String] Query for full text search in username, display name, bio
      #
      # @param limit [String] The number of profiles to return. For each returned profile we charge your accou
      #
      # @param location [String] Location
      #
      # @param max_subscribe_price [String] Maximum subscribe price
      #
      # @param min_subscribe_price [String] Minimum subscribe price
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SearchProfilesResponse]
      #
      # @see Onlyfansapi::Models::SearchProfilesParams
      def profiles(params)
        parsed, options = Onlyfansapi::SearchProfilesParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/search",
          query: query,
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
