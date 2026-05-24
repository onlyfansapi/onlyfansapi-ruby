# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans transactions
    class Transactions
      # Get a paginated list of transactions for an Account. Newest transactions are
      # first.
      #
      # @overload list(account, limit: nil, marker: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [String] The number of transactions to return. Recommended: `10`
      #
      # @param marker [String] The marker used for pagination. Default: `null`
      #
      # @param start_date [String] The start date for transactions list. Default: `-30days`
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::TransactionListResponse]
      #
      # @see Onlyfansapi::Models::TransactionListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::TransactionListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/transactions", account],
          query: query.transform_keys(start_date: "startDate"),
          model: Onlyfansapi::Models::TransactionListResponse,
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
