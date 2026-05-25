# typed: strong

module Onlyfans
  module Resources
    class Engagement
      class Messages
        class MassMessages
          # List sent mass messages with engagement stats (sent, viewed, purchased, etc.).
          sig do
            params(
              account: String,
              end_date: String,
              limit: Integer,
              query: String,
              start_date: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::Engagement::Messages::MassMessageListResponse
            )
          end
          def list(
            # The Account ID
            account,
            # The latest message to retrieve. Keep empty to get all. MUST BE DATE AFTER
            # `startDate`. This is also used for pagination.
            end_date: nil,
            # Number of messages to return (default = 10)
            limit: nil,
            # Optionally, filter by message text.
            query: nil,
            # The earliest message to retrieve. Keep empty to get all.
            start_date: nil,
            request_options: {}
          )
          end

          # Get engagement chart metrics for mass messages: sent count and purchase amount
          # over time.
          sig do
            params(
              account: String,
              end_date: String,
              start_date: String,
              with_total: T::Boolean,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::Engagement::Messages::MassMessageChartResponse
            )
          end
          def chart(
            # The Account ID
            account,
            # End of the chart window in `Y-m-d H:i:s` format. Must be after `startDate`.
            end_date: nil,
            # Start of the chart window in `Y-m-d H:i:s` format.
            start_date: nil,
            # Include `total` and `delta` aggregates in the response. Defaults to `true`.
            with_total: nil,
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
  end
end
