# typed: strong

module Onlyfans
  module Resources
    class Chats
      sig { returns(Onlyfans::Resources::Chats::Messages) }
      attr_reader :messages

      sig { returns(Onlyfans::Resources::Chats::MarkAllAsRead) }
      attr_reader :mark_all_as_read

      # Get the list of chats for an Account.
      sig do
        params(
          account: String,
          filter: Onlyfans::ChatListParams::Filter::OrSymbol,
          limit: String,
          offset: String,
          order: Onlyfans::ChatListParams::Order::OrSymbol,
          query: String,
          skip_users: Onlyfans::ChatListParams::SkipUsers::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatListResponse)
      end
      def list(
        # The Account ID
        account,
        # Optionally, filter the chats by type.
        filter: nil,
        # Number of chats to return (1 - 100). Default = 10
        limit: nil,
        # Number of chats to skip for pagination
        offset: nil,
        # Sort order for chats (recent or old). Default = recent
        order: nil,
        # Search query to filter chats
        query: nil,
        # Whether to skip user details in the response (`all` or `none`). Defaults to
        # `all`.
        skip_users: nil,
        request_options: {}
      )
      end

      # Delete a specific chat.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatDeleteResponse)
      end
      def delete(
        # The ID of the chat to delete, usually a fan's OnlyFans User ID
        chat_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Hide a specific chat from the chat list. To unhide this chat, send a new message
      # to the user.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatHideResponse)
      end
      def hide(
        # The ID of the chat to hide, usually a fan's OnlyFans User ID
        chat_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # List media files shared in a specific chat.
      sig do
        params(
          chat_id: String,
          account: String,
          limit: String,
          offset: String,
          skip_users: String,
          type: T.nilable(Onlyfans::ChatListMediaParams::Type::OrSymbol),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatListMediaResponse)
      end
      def list_media(
        # Path param: The ID of the chat to get media from, usually a fan's OnlyFans User
        # ID
        chat_id,
        # Path param: The Account ID
        account:,
        # Query param: Number of medias to return. Default = 20
        limit: nil,
        # Query param: Number of medias to skip for pagination
        offset: nil,
        # Query param: Whether to skip user details in the response (`all` or `none`).
        # Defaults to `all`.
        skip_users: nil,
        # Query param: Filter by specific media types. Keep empty to return all.
        type: nil,
        request_options: {}
      )
      end

      # Mark a specific chat as read. Alternative to List Chat Messages endpoint, if you
      # just want to mark the chat as read without fetching messages.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatMarkAsReadResponse)
      end
      def mark_as_read(
        # The ID of the chat to mark as read, usually a fan's OnlyFans User ID
        chat_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Mark a specific chat as unread.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatMarkAsUnreadResponse)
      end
      def mark_as_unread(
        # The ID of the chat to mark as read, usually a fan's OnlyFans User ID
        chat_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Mute notifications for a specific chat.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatMuteResponse)
      end
      def mute(
        # The ID of the chat to mute, usually a fan's OnlyFans User ID
        chat_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Calling this endpoint will show the target fan a "Model is typing..." note in
      # the chat for ~4 seconds. Duplicate calls for the same account and chat are
      # coalesced during that window.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatStartTypingResponse)
      end
      def start_typing(
        # The ID of the chat (usually a fan's OnlyFans User ID)
        chat_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Unmute notifications for a specific chat.
      sig do
        params(
          chat_id: String,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ChatUnmuteResponse)
      end
      def unmute(
        # The ID of the chat to unmute, usually a fan's OnlyFans User ID
        chat_id,
        # The Account ID
        account:,
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
