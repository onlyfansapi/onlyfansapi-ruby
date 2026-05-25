# frozen_string_literal: true

module Onlyfans
  module Resources
    class Whoami
      # Get details about the currently used API Key & the relevant Team
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::WhoamiRetrieveResponse]
      #
      # @see Onlyfans::Models::WhoamiRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/whoami",
          model: Onlyfans::Models::WhoamiRetrieveResponse,
          options: params[:request_options]
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
