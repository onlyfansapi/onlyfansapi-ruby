# typed: strong

module Onlyfans
  module Resources
    class Engagement
      class Messages
        sig { returns(Onlyfans::Resources::Engagement::Messages::MassMessages) }
        attr_reader :mass_messages

        sig do
          returns(Onlyfans::Resources::Engagement::Messages::DirectMessages)
        end
        attr_reader :direct_messages

        # List buyers for a specific message.
        sig do
          params(
            message_id: String,
            account: String,
            limit: Integer,
            marker: Integer,
            offset: Integer,
            skip_users: String,
            skip_users_dups: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(
            Onlyfans::Models::Engagement::MessageGetMessageBuyersResponse
          )
        end
        def get_message_buyers(
          # Path param: The ID of the message.
          message_id,
          # Path param: The Account ID
          account:,
          # Query param: Number of buyers to return (default = 10)
          limit: nil,
          # Query param: Marker for pagination
          marker: nil,
          # Query param: Offset for pagination (default = 0)
          offset: nil,
          # Query param: Optional flag for subsequent pages (example: all)
          skip_users: nil,
          # Query param: Skip duplicate users in results (0/1). Default = 1
          skip_users_dups: nil,
          request_options: {}
        )
        end

        # Get the top performing message by purchases in the selected timeframe.
        sig do
          params(
            account: String,
            end_date: String,
            start_date: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Engagement::MessageGetTopMessageResponse)
        end
        def get_top_message(
          # The Account ID
          account,
          # The end date for the period. Keep empty to retrieve until now. MUST BE DATE
          # AFTER `startDate`.
          end_date: nil,
          # The start date for the period. Keep empty to retrieve from the model start date.
          start_date: nil,
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
