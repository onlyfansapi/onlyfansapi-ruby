# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing tags on free trial links and tracking links
    class LinkTags
      # Get all existing tags that have been used on free trial links and/or tracking
      # links for this account. This is a free endpoint.
      #
      # @overload list(type: nil, request_options: {})
      #
      # @param type [Symbol, Onlyfansapi::Models::LinkTagListParams::Type] Filter by link type. If not provided, returns tags for both types.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::LinkTagListResponse]
      #
      # @see Onlyfansapi::Models::LinkTagListParams
      def list(params = {})
        parsed, options = Onlyfansapi::LinkTagListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/link-tags",
          query: query,
          model: Onlyfansapi::Models::LinkTagListResponse,
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
