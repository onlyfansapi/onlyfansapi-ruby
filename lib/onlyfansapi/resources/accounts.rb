# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # Endpoints for your linked accounts
    class Accounts
      # List all connected OnlyFans accounts.
      #
      # @overload list(onlyfans_email: nil, onlyfans_id: nil, onlyfans_username: nil, request_options: {})
      #
      # @param onlyfans_email [String, nil] Optionally, filter by the OnlyFans email
      #
      # @param onlyfans_id [String, nil] Optionally, filter by the OnlyFans ID
      #
      # @param onlyfans_username [String, nil] Optionally, filter by the OnlyFans username
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Object>]
      #
      # @see Onlyfansapi::Models::AccountListParams
      def list(params = {})
        parsed, options = Onlyfansapi::AccountListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/accounts",
          query: query,
          model: Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
          options: options
        )
      end

      # Disconnect an OnlyFans account.
      #
      # @overload disconnect(id, request_options: {})
      #
      # @param id [String] The ID of the account.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Object, nil]
      #
      # @see Onlyfansapi::Models::AccountDisconnectParams
      def disconnect(id, params = {})
        @client.request(
          method: :delete,
          path: ["api/accounts/%1$s", id],
          model: Onlyfansapi::Internal::Type::Unknown,
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
