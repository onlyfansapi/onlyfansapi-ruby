# typed: strong

module Onlyfansapi
  module Resources
    class Analytics
      # APIs for retrieving summary analytics data
      class Summary
        # Get earnings overview by category for selected accounts within a date range.
        # Returns total earnings, subscriptions, posts, messages, tips, streams, and
        # content stats.
        sig do
          params(
            account_ids: T::Array[String],
            end_date: String,
            start_date: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(
            Onlyfansapi::Models::Analytics::SummaryGetEarningsOverviewResponse
          )
        end
        def get_earnings_overview(
          # Array of account prefixed IDs to get earnings for
          account_ids:,
          # The end date (ISO 8601 format)
          end_date:,
          # The start date (ISO 8601 format)
          start_date:,
          request_options: {}
        )
        end

        # Get historical earnings chart data for the team. Returns monthly aggregated
        # revenue data for the specified time range.
        sig do
          params(
            time_range:
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(
            T::Array[
              Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem
            ]
          )
        end
        def get_historical_performance(
          # The time range for historical data
          time_range: nil,
          request_options: {}
        )
        end

        # Compare two time periods to analyze performance changes. Returns summary,
        # breakdown, and chart data for the comparison.
        sig do
          params(
            account_ids: T::Array[String],
            period_a:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodA::OrHash,
            period_b:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodB::OrHash,
            granularity:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol,
            stat_type:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(
            Onlyfansapi::Models::Analytics::SummaryGetPeriodComparisonResponse
          )
        end
        def get_period_comparison(
          # Array of account prefixed IDs to compare
          account_ids:,
          # First period to compare
          period_a:,
          # Second period to compare
          period_b:,
          # Comparison granularity
          granularity: nil,
          # The statistic type to compare
          stat_type: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
