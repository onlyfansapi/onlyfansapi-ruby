# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Whoami
      # Get details about the currently used API Key & the relevant Team
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::WhoamiRetrieveResponse]
      #
      # @see Onlyfansapi::Models::WhoamiRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/whoami",
          model: Onlyfansapi::Models::WhoamiRetrieveResponse,
          options: params[:request_options]
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
