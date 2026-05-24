# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Analytics
      class Financial
        # APIs for retrieving financial analytics data
        class Profitability
          # Some parameter documentations has been truncated, see
          # {Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryParams} for
          # more details.
          #
          # Get historical profitability data for a specific account over multiple months.
          #
          # @overload get_history(account, account_prefixed_id:, months: nil, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param account_prefixed_id [String] The account prefixed ID.
          #
          # @param months [Integer] Number of months of history to retrieve (1-60, default 12). Must be at least 1.
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryResponseItem>]
          #
          # @see Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryParams
          def get_history(account, params)
            parsed, options = Onlyfansapi::Analytics::Financial::ProfitabilityGetHistoryParams.dump_request(params)
            query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/analytics/financial/profitability/%1$s/history", account],
              query: query,
              model: Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryResponseItem],
              options: options
            )
          end

          # Calculate profitability for creators including revenue, costs, commissions, and
          # margins for a specific month.
          #
          # @overload get_profitability(account_ids:, month:, year:, request_options: {})
          #
          # @param account_ids [Array<String>] Array of account prefixed IDs
          #
          # @param month [Integer] The month to calculate profitability for (1-12)
          #
          # @param year [Integer] The year to calculate profitability for
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponseItem>]
          #
          # @see Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityParams
          def get_profitability(params)
            parsed, options =
              Onlyfansapi::Analytics::Financial::ProfitabilityGetProfitabilityParams.dump_request(params)
            @client.request(
              method: :post,
              path: "api/analytics/financial/profitability",
              body: parsed,
              model: Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponseItem],
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
  end
end
