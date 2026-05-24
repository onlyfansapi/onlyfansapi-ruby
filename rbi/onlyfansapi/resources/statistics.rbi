# typed: strong

module Onlyfansapi
  module Resources
    class Statistics
      sig { returns(Onlyfansapi::Resources::Statistics::Statements) }
      attr_reader :statements

      sig { returns(Onlyfansapi::Resources::Statistics::Reach) }
      attr_reader :reach

      # Calculate the total transactions and amounts.
      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(
          Onlyfansapi::Models::StatisticCalculateTotalTransactionsResponse
        )
      end
      def calculate_total_transactions(
        # The Account ID
        account,
        # The end date for the period. Keep empty to calculate everything.
        end_date:,
        # The start date for the period. Keep empty to calculate everything.
        start_date:,
        request_options: {}
      )
      end

      # Get an overview of statistics for fans, visitors, posts, or general.
      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          type:
            T.nilable(Onlyfansapi::StatisticGetOverviewParams::Type::OrSymbol),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StatisticGetOverviewResponse)
      end
      def get_overview(
        # The Account ID
        account,
        # The end date for the statistics.
        end_date:,
        # The start date for the statistics.
        start_date:,
        # The type of statistics to retrieve (default = empty)
        type: nil,
        request_options: {}
      )
      end

      # Get subscriber metrics including total, new, renewed, paid, and free
      # subscriptions for a specified timeframe. `unknown_subscriptions` indicates
      # deleted fan accounts.
      sig do
        params(
          account: String,
          end_date: String,
          start_date: String,
          detailed: T.nilable(T::Boolean),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StatisticGetSubscriberMetricsResponse)
      end
      def get_subscriber_metrics(
        # The Account ID
        account,
        # The end date for the metrics.
        end_date:,
        # The start date for the metrics.
        start_date:,
        # Include paid and free fan metrics. Will slow down the response time, and might
        # time out if timeframe is too large. Default = `false`
        detailed: nil,
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
