# frozen_string_literal: true

module Onlyfansapi
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
      # @param type [Symbol, Onlyfansapi::Models::SubscriberRetrieveStatisticsParams::Type, nil] Filter the subscriber statistics (default = total)
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::SubscriberRetrieveStatisticsResponse]
      #
      # @see Onlyfansapi::Models::SubscriberRetrieveStatisticsParams
      def retrieve_statistics(account, params = {})
        parsed, options = Onlyfansapi::SubscriberRetrieveStatisticsParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/subscribers/statistics", account],
          query: query,
          model: Onlyfansapi::Models::SubscriberRetrieveStatisticsResponse,
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
