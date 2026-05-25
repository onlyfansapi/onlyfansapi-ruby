# frozen_string_literal: true

module Onlyfans
  module Resources
    class Subscribers
      # Get subscriber and earning statistics for an account for a specified timeframe.
      # Optionally, filter by all, renews, or new subscribers.
      #
      # @overload retrieve_statistics(account, end_date: nil, start_date: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String, nil] The end date for the period. Keep empty to calculate everything.
      #
      # @param start_date [String, nil] The start date for the period. Keep empty to calculate everything.
      #
      # @param type [Symbol, Onlyfans::Models::SubscriberRetrieveStatisticsParams::Type, nil] Filter the subscriber statistics (default = total)
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::SubscriberRetrieveStatisticsResponse]
      #
      # @see Onlyfans::Models::SubscriberRetrieveStatisticsParams
      def retrieve_statistics(account, params = {})
        parsed, options = Onlyfans::SubscriberRetrieveStatisticsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/subscribers/statistics", account],
          query: query,
          model: Onlyfans::Models::SubscriberRetrieveStatisticsResponse,
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
