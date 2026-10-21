# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing tags on free trial links, tracking links, and Smart Links
    class LinkTags
      # Get all existing tags that have been used on free trial links, tracking links,
      # and/or Smart Links for this account. This is a free endpoint.
      #
      # @overload list(type: nil, request_options: {})
      #
      # @param type [Symbol, Onlyfans::Models::LinkTagListParams::Type] Filter by link type. If not provided, returns tags for all types.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::LinkTagListResponse]
      #
      # @see Onlyfans::Models::LinkTagListParams
      def list(params = {})
        parsed, options = Onlyfans::LinkTagListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/link-tags",
          query: query,
          model: Onlyfans::Models::LinkTagListResponse,
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
