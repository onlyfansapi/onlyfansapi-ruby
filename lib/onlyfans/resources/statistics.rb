# frozen_string_literal: true

module Onlyfans
  module Resources
    class Statistics
      # @return [Onlyfans::Resources::Statistics::Statements]
      attr_reader :statements

      # @return [Onlyfans::Resources::Statistics::Reach]
      attr_reader :reach

      # Calculate the total transactions and amounts.
      #
      # @overload calculate_total_transactions(account, end_date: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String] The end date for the period. Keep empty to calculate everything.
      #
      # @param start_date [String] The start date for the period. Keep empty to calculate everything.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StatisticCalculateTotalTransactionsResponse]
      #
      # @see Onlyfans::Models::StatisticCalculateTotalTransactionsParams
      def calculate_total_transactions(account, params = {})
        parsed, options = Onlyfans::StatisticCalculateTotalTransactionsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/statistics/total-transactions", account],
          query: query,
          model: Onlyfans::Models::StatisticCalculateTotalTransactionsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::StatisticGetOverviewParams} for more details.
      #
      # Get an overview of statistics for fans, visitors, posts, or general.
      #
      # @overload get_overview(account, end_date: nil, start_date: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String] The end date for the statistics. Keep empty to retrieve until now.
      #
      # @param start_date [String] The start date for the statistics. Keep empty to retrieve from the model's start
      #
      # @param type [Symbol, Onlyfans::Models::StatisticGetOverviewParams::Type, nil] The type of statistics to retrieve (default = empty)
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StatisticGetOverviewResponse]
      #
      # @see Onlyfans::Models::StatisticGetOverviewParams
      def get_overview(account, params = {})
        parsed, options = Onlyfans::StatisticGetOverviewParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/statistics/overview", account],
          query: query,
          model: Onlyfans::Models::StatisticGetOverviewResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::StatisticGetSubscriberMetricsParams} for more details.
      #
      # Get subscriber metrics including total, new, renewed, paid, and free
      # subscriptions for a specified timeframe. `unknown_subscriptions` indicates
      # deleted fan accounts.
      #
      # @overload get_subscriber_metrics(account, end_date:, start_date:, detailed: nil, detailed_type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String] The end date for the metrics.
      #
      # @param start_date [String] The start date for the metrics.
      #
      # @param detailed [Boolean, nil] Include paid and free fan metrics. Will slow down the response time, and might t
      #
      # @param detailed_type [Symbol, Onlyfans::Models::StatisticGetSubscriberMetricsParams::DetailedType, nil] Use only with `detailed=true` - otherwise, it has no effect. Filter the subscrib
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StatisticGetSubscriberMetricsResponse]
      #
      # @see Onlyfans::Models::StatisticGetSubscriberMetricsParams
      def get_subscriber_metrics(account, params)
        parsed, options = Onlyfans::StatisticGetSubscriberMetricsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/statistics/subscriber-metrics", account],
          query: query,
          model: Onlyfans::Models::StatisticGetSubscriberMetricsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @statements = Onlyfans::Resources::Statistics::Statements.new(client: client)
        @reach = Onlyfans::Resources::Statistics::Reach.new(client: client)
      end
    end
  end
end
