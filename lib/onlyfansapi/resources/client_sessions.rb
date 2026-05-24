# frozen_string_literal: true

module Onlyfansapi
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
      # @param proxy_country [Symbol, Onlyfansapi::Models::ClientSessionCreateParams::ProxyCountry, nil]
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ClientSessionCreateResponse]
      #
      # @see Onlyfansapi::Models::ClientSessionCreateParams
      def create(params)
        parsed, options = Onlyfansapi::ClientSessionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/client-sessions",
          body: parsed,
          model: Onlyfansapi::Models::ClientSessionCreateResponse,
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
