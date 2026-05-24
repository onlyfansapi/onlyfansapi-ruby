# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for fetching OnlyFans users
    class Users
      # Get OnlyFans Profile details for a given username. User details are retrieved
      # using the current current `{account}` so fields like `subscribedOnData` which
      # include potential subscription details will be included.
      #
      # @overload retrieve(username, account:, request_options: {})
      #
      # @param username [String]
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::UserRetrieveResponse]
      #
      # @see Onlyfansapi::Models::UserRetrieveParams
      def retrieve(username, params)
        parsed, options = Onlyfansapi::UserRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/users/%2$s", account, username],
          model: Onlyfansapi::Models::UserRetrieveResponse,
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
