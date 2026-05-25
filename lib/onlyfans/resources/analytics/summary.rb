# frozen_string_literal: true

module Onlyfans
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Analytics::SummaryGetEarningsOverviewResponse]
        #
        # @see Onlyfans::Models::Analytics::SummaryGetEarningsOverviewParams
        def get_earnings_overview(params)
          parsed, options = Onlyfans::Analytics::SummaryGetEarningsOverviewParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/analytics/summary/earnings",
            body: parsed,
            model: Onlyfans::Models::Analytics::SummaryGetEarningsOverviewResponse,
            options: options
          )
        end

        # Get historical earnings chart data for the team. Returns monthly aggregated
        # revenue data for the specified time range.
        #
        # @overload get_historical_performance(time_range: nil, request_options: {})
        #
        # @param time_range [Symbol, Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange] The time range for historical data
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem>]
        #
        # @see Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceParams
        def get_historical_performance(params = {})
          parsed, options = Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/analytics/summary/historical",
            body: parsed,
            model: Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem],
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
        # @param period_a [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodA] First period to compare
        #
        # @param period_b [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodB] Second period to compare
        #
        # @param granularity [Symbol, Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::Granularity] Comparison granularity
        #
        # @param stat_type [Symbol, Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::StatType] The statistic type to compare
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse]
        #
        # @see Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams
        def get_period_comparison(params)
          parsed, options = Onlyfans::Analytics::SummaryGetPeriodComparisonParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/analytics/summary/comparison",
            body: parsed,
            model: Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse,
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
