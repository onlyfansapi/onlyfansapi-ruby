# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Giphy
      # Get trending GIFs from the OnlyFans Giphy proxy. Use the returned `id` as the
      # `giphyId` body param when sending a chat or mass message.
      #
      # @overload list_trending(account, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] Number of GIFs to return (default = 10, max = 50)
      #
      # @param offset [Integer] Number of GIFs to skip for pagination (default = 0)
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::GiphyListTrendingResponse]
      #
      # @see Onlyfansapi::Models::GiphyListTrendingParams
      def list_trending(account, params = {})
        parsed, options = Onlyfansapi::GiphyListTrendingParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/giphy/trending", account],
          query: query,
          model: Onlyfansapi::Models::GiphyListTrendingResponse,
          options: options
        )
      end

      # Search GIFs from the OnlyFans Giphy proxy. Use the returned `id` as the
      # `giphyId` body param when sending a chat or mass message.
      #
      # @overload search(account, q:, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param q [String] The search query.
      #
      # @param limit [Integer] Number of GIFs to return (default = 10, max = 50)
      #
      # @param offset [Integer] Number of GIFs to skip for pagination (default = 0)
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::GiphySearchResponse]
      #
      # @see Onlyfansapi::Models::GiphySearchParams
      def search(account, params)
        parsed, options = Onlyfansapi::GiphySearchParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/giphy/search", account],
          query: query,
          model: Onlyfansapi::Models::GiphySearchResponse,
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
