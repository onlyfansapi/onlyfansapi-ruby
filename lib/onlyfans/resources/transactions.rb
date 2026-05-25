# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing OnlyFans transactions
    class Transactions
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::TransactionListParams} for more details.
      #
      # Get a paginated list of transactions for an Account. Newest transactions are
      # first. You can filter by transaction type and tips source.
      #
      # @overload list(account, limit: nil, marker: nil, start_date: nil, tips_source: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [String] The number of transactions to return. Recommended: `10`
      #
      # @param marker [String] The marker used for pagination. Default: `null`
      #
      # @param start_date [String] The start date for transactions list. Default: `-30days`
      #
      # @param tips_source [String] Filter tips by source. Only applies when `type=tips`. Options: `profile`,
      # `post\_
      #
      # @param type [String] Filter by transaction type. Options: `subscribes`, `tips`, `post`, `chat_message
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::TransactionListResponse]
      #
      # @see Onlyfans::Models::TransactionListParams
      def list(account, params = {})
        parsed, options = Onlyfans::TransactionListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/transactions", account],
          query: query.transform_keys(start_date: "startDate", tips_source: "tipsSource"),
          model: Onlyfans::Models::TransactionListResponse,
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
