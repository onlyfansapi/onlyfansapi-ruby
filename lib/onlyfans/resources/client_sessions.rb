# frozen_string_literal: true

module Onlyfans
  module Resources
    class ClientSessions
      # Create Client Session Token for later use in embedded auth components - eg. via
      # @onlyfansapi/auth npm package.
      #
      # @overload create(display_name:, client_reference_id: nil, proxy_country: nil, request_options: {})
      #
      # @param display_name [String] Display Name of the account visible in your OnlyFansAPI Console Dashboard.
      #
      # @param client_reference_id [String] Your Internal Reference ID for the connected account.
      #
      # @param proxy_country [Symbol, Onlyfans::Models::ClientSessionCreateParams::ProxyCountry, nil]
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ClientSessionCreateResponse]
      #
      # @see Onlyfans::Models::ClientSessionCreateParams
      def create(params)
        parsed, options = Onlyfans::ClientSessionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/client-sessions",
          body: parsed,
          model: Onlyfans::Models::ClientSessionCreateResponse,
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
