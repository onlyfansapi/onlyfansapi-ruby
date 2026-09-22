# frozen_string_literal: true

module Onlyfans
  module Resources
    class Statistics
      class Statements
        # Get the earnings for a given period.
        #
        # @overload get_earnings(account, end_date:, start_date:, type: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param end_date [String] The end date for the period.
        #
        # @param start_date [String] The start date for the period.
        #
        # @param type [Symbol, Onlyfans::Models::Statistics::StatementGetEarningsParams::Type] Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Statistics::StatementGetEarningsResponse]
        #
        # @see Onlyfans::Models::Statistics::StatementGetEarningsParams
        def get_earnings(account, params)
          parsed, options = Onlyfans::Statistics::StatementGetEarningsParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/statistics/statements/earnings", account],
            query: query,
            model: Onlyfans::Models::Statistics::StatementGetEarningsResponse,
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
