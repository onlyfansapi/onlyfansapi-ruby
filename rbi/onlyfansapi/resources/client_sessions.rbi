# typed: strong

module Onlyfansapi
  module Resources
    class ClientSessions
      # Create Client Session Token for later use in embedded auth components - eg. via
      # @onlyfansapi/auth npm package.
      sig do
        params(
          display_name: String,
          client_reference_id: String,
          proxy_country:
            T.nilable(
              Onlyfansapi::ClientSessionCreateParams::ProxyCountry::OrSymbol
            ),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ClientSessionCreateResponse)
      end
      def create(
        # Display Name of the account visible in your OnlyFansAPI Console Dashboard.
        display_name:,
        # Your Internal Reference ID for the connected account.
        client_reference_id: nil,
        proxy_country: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
