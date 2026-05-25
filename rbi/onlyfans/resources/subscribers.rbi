# typed: strong

module Onlyfans
  module Resources
    class Subscribers
      # Get subscriber and earning statistics for an account for a specified timeframe.
      # Optionally, filter by all, renews, or new subscribers.
      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          type:
            T.nilable(
              Onlyfans::SubscriberRetrieveStatisticsParams::Type::OrSymbol
            ),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::SubscriberRetrieveStatisticsResponse)
      end
      def retrieve_statistics(
        # The Account ID
        account,
        # The end date for the period. Keep empty to calculate everything.
        end_date: nil,
        # The start date for the period. Keep empty to calculate everything.
        start_date: nil,
        # Filter the subscriber statistics (default = total)
        type: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
