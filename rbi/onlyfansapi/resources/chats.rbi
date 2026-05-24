# typed: strong

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans chats
    class Chats
      # APIs for managing OnlyFans chats
      sig { returns(Onlyfansapi::Resources::Chats::Messages) }
      attr_reader :messages

      # Get the list of chats for an Account.
      sig do
        params(
          account: String,
          limit: String,
          offset: String,
          order: String,
          query: String,
          skip_users: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ChatListResponse)
      end
      def list(
        # The Account ID
        account,
        # Number of chats to return (10, 20, or 30)
        limit: nil,
        # Number of chats to skip for pagination
        offset: nil,
        # Sort order for chats (recent or old)
        order: nil,
        # Search query to filter chats
        query: nil,
        # Whether to skip user details in response (all or none)
        skip_users: nil,
        request_options: {}
      )
      end

      # Calling this endpoint will show the target fan a "Model is typing..." note in
      # the chat for ~4 seconds. If you want to continue showing the indicator call this
      # endpoint multiple times. Free - no credits charged.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ChatStartTypingIndicatorResponse)
      end
      def start_typing_indicator(
        # The ID of the chat (usually a fan's OnlyFans User ID)
        chat_id,
        # The Account ID
        account:,
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
