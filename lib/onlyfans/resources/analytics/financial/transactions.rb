# frozen_string_literal: true

module Onlyfans
  module Resources
    class Analytics
      class Financial
        # APIs for retrieving financial analytics data
        class Transactions
          # Get transaction totals grouped by transaction type (subscriptions, tips,
          # messages, etc.).
          #
          # @overload get_by_type(account_ids:, end_date:, start_date:, request_options: {})
          #
          # @param account_ids [Array<String>] Array of account prefixed IDs
          #
          # @param end_date [String] The end date (ISO 8601 format)
          #
          # @param start_date [String] The start date (ISO 8601 format)
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Onlyfans::Models::Analytics::Financial::TransactionGetByTypeResponseItem>]
          #
          # @see Onlyfans::Models::Analytics::Financial::TransactionGetByTypeParams
          def get_by_type(params)
            parsed, options = Onlyfans::Analytics::Financial::TransactionGetByTypeParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/analytics/financial/transactions/by-type",
              body: parsed,
              model: Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::Financial::TransactionGetByTypeResponseItem],
              options: options
            )
          end

          # Get transaction summary including counts for succeeded, refunded, and disputed
          # transactions, plus gross, net, and fee totals.
          #
          # @overload get_summary(account_ids:, end_date:, start_date:, request_options: {})
          #
          # @param account_ids [Array<String>] Array of account prefixed IDs
          #
          # @param end_date [String] The end date (ISO 8601 format)
          #
          # @param start_date [String] The start date (ISO 8601 format)
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Analytics::Financial::TransactionGetSummaryResponse]
          #
          # @see Onlyfans::Models::Analytics::Financial::TransactionGetSummaryParams
          def get_summary(params)
            parsed, options = Onlyfans::Analytics::Financial::TransactionGetSummaryParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/analytics/financial/transactions/summary",
              body: parsed,
              model: Onlyfans::Models::Analytics::Financial::TransactionGetSummaryResponse,
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
  end
end
