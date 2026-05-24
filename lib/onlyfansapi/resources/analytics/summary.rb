# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Analytics
      # APIs for retrieving summary analytics data
      class Summary
        # Get earnings overview by category for selected accounts within a date range.
        # Returns total earnings, subscriptions, posts, messages, tips, streams, and
        # content stats.
        #
        # @overload get_earnings_overview(account_ids:, end_date:, start_date:, request_options: {})
        #
        # @param account_ids [Array<String>] Array of account prefixed IDs to get earnings for
        #
        # @param end_date [String] The end date (ISO 8601 format)
        #
        # @param start_date [String] The start date (ISO 8601 format)
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Analytics::SummaryGetEarningsOverviewResponse]
        #
        # @see Onlyfansapi::Models::Analytics::SummaryGetEarningsOverviewParams
        def get_earnings_overview(params)
          parsed, options = Onlyfansapi::Analytics::SummaryGetEarningsOverviewParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/analytics/summary/earnings",
            body: parsed,
            model: Onlyfansapi::Models::Analytics::SummaryGetEarningsOverviewResponse,
            options: options
          )
        end

        # Get historical earnings chart data for the team. Returns monthly aggregated
        # revenue data for the specified time range.
        #
        # @overload get_historical_performance(time_range: nil, request_options: {})
        #
        # @param time_range [Symbol, Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange] The time range for historical data
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem>]
        #
        # @see Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceParams
        def get_historical_performance(params = {})
          parsed, options = Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/analytics/summary/historical",
            body: parsed,
            model: Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem],
            options: options
          )
        end

        # Compare two time periods to analyze performance changes. Returns summary,
        # breakdown, and chart data for the comparison.
        #
        # @overload get_period_comparison(account_ids:, period_a:, period_b:, granularity: nil, stat_type: nil, request_options: {})
        #
        # @param account_ids [Array<String>] Array of account prefixed IDs to compare
        #
        # @param period_a [Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodA] First period to compare
        #
        # @param period_b [Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodB] Second period to compare
        #
        # @param granularity [Symbol, Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonParams::Granularity] Comparison granularity
        #
        # @param stat_type [Symbol, Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonParams::StatType] The statistic type to compare
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonResponse]
        #
        # @see Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonParams
        def get_period_comparison(params)
          parsed, options = Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/analytics/summary/comparison",
            body: parsed,
            model: Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonResponse,
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
