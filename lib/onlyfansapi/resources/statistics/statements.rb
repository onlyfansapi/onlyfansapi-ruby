# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Statistics
      class Statements
        # Get the earnings for a given period.
        #
        # @overload get_earnings(account, start_date:, end_date: nil, type: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param start_date [String] The start date for the period
        #
        # @param end_date [String] The end date for the period.
        #
        # @param type [Symbol, Onlyfansapi::Models::Statistics::StatementGetEarningsParams::Type] Filter by All / Subscriptions / Tips / Posts / Messages / Streams
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Statistics::StatementGetEarningsResponse]
        #
        # @see Onlyfansapi::Models::Statistics::StatementGetEarningsParams
        def get_earnings(account, params)
          parsed, options = Onlyfansapi::Statistics::StatementGetEarningsParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/statistics/statements/earnings", account],
            query: query,
            model: Onlyfansapi::Models::Statistics::StatementGetEarningsResponse,
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
