# typed: strong

module Onlyfans
  module Resources
    class Chats
      class Messages
        # Get a single chat message by its ID. Returns a 404 if the message does not exist
        # in the chat.
        sig do
          params(
            message_id: String,
            account: String,
            chat_id: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageRetrieveResponse)
        end
        def retrieve(
          # The ID of the message to retrieve
          message_id,
          # The Account ID
          account:,
          # The ID of the chat (usually a fan's OnlyFans User ID)
          chat_id:,
          request_options: {}
        )
        end

        # Get messages from a specific chat.
        sig do
          params(
            chat_id: String,
            account: String,
            filter: Onlyfans::Chats::MessageListParams::Filter::OrSymbol,
            first_id: T.nilable(String),
            last_id: T.nilable(String),
            limit: String,
            order: String,
            skip_users: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageListResponse)
        end
        def list(
          # Path param: The ID of the chat (usually a fan's OnlyFans User ID)
          chat_id,
          # Path param: The Account ID
          account:,
          # Query param: Filter by certain messages. Currently, only pins are filterable.
          filter: nil,
          # Query param: Use for pagination when `order=desc` (newest to oldest). Include
          # this message ID as the first message in the results. Used to retrieve messages
          # from e.g. the Search Chat Messages endpoint IDs.
          first_id: nil,
          # Query param: Use for pagination when `order=asc` (oldest to newest). Include
          # this message ID as the first message in the results. WARNING! The response list
          # of messages will also be inverted (oldest messages will be first, opposite to
          # default where `order=desc`).
          last_id: nil,
          # Query param: The number of messages to return (default = 10, max = 100)
          limit: nil,
          # Query param: Sort order for messages (desc or asc)
          order: nil,
          # Query param: Whether to skip user details (`all` or `none`).
          skip_users: nil,
          request_options: {}
        )
        end

        # Delete a message from a chat. Please note that ONLY messages sent less than 24
        # hours ago can be deleted.
        sig do
          params(
            message_id: String,
            account: String,
            chat_id: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageDeleteResponse)
        end
        def delete(
          # The ID of the message to retrieve
          message_id,
          # The Account ID
          account:,
          # The ID of the chat (usually a fan's OnlyFans User ID)
          chat_id:,
          request_options: {}
        )
        end

        # Like a chat message.
        sig do
          params(
            message_id: String,
            account: String,
            chat_id: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageLikeResponse)
        end
        def like(
          # The ID of the message to like
          message_id,
          # The Account ID
          account:,
          # The ID of the chat, usually a fan's OnlyFans User ID
          chat_id:,
          request_options: {}
        )
        end

        # Pin a message from a chat.
        sig do
          params(
            message_id: String,
            account: String,
            chat_id: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessagePinResponse)
        end
        def pin(
          # The ID of the message to pin
          message_id,
          # The Account ID
          account:,
          # The ID of the chat, usually a fan's OnlyFans User ID
          chat_id:,
          request_options: {}
        )
        end

        # Search messages in a specific chat. Returns a list of message IDs matching the
        # search query.
        sig do
          params(
            chat_id: String,
            account: String,
            query: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageSearchResponse)
        end
        def search(
          # Path param: The ID of the chat (usually a fan's OnlyFans User ID)
          chat_id,
          # Path param: The Account ID
          account:,
          # Query param: The query search in messages.
          query:,
          request_options: {}
        )
        end

        # Send a new message to a chat.
        sig do
          params(
            chat_id: String,
            account: String,
            block_banned_words:
              Onlyfans::Chats::MessageSendParams::BlockBannedWords::OrSymbol,
            giphy_id: String,
            locked_text: T::Boolean,
            media_files: T::Array[T.anything],
            previews: T::Array[T.anything],
            price: Integer,
            reply_to_message_id: Integer,
            rf_guest: String,
            rf_partner: String,
            rf_tag: String,
            text: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageSendResponse)
        end
        def send_(
          # Path param: The ID of the chat (usually a fan's OnlyFans User ID)
          chat_id,
          # Path param: The Account ID
          account:,
          # Body param: Screen `text` for OnlyFans banned words and block the send if any
          # are found (returns a 422 listing the offending words). `strict_ban` blocks all
          # tiers, `risky` blocks Risky + Replace/soften, `replace_soften` blocks
          # Replace/soften only. Omit to disable screening.
          block_banned_words: nil,
          # Body param: The ID of the Giphy GIF to attach to the message. Get IDs from the
          # Giphy listing endpoints (`/giphy/trending`, `/giphy/search`).
          giphy_id: nil,
          # Body param: Whether the text should be shown or hidden
          locked_text: nil,
          # Body param: Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will
          # be hidden if `price` is provided.
          media_files: nil,
          # Body param: Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or
          # integer indices referencing uploaded files in `mediaFiles`. Will be shown if
          # `price` is provided.
          previews: nil,
          # Body param: Price for paid content (0 or between 3-200). In case this is not
          # zero, **mediaFiles** is required
          price: nil,
          # Body param: Mark this message as a reply to another (can be either your own, or
          # the recipient's)
          reply_to_message_id: nil,
          # Body param: Array of OnlyFans Release Form Guest IDs to tag in your message
          rf_guest: nil,
          # Body param: Array of OnlyFans Release Form Partners IDs to tag in your message
          rf_partner: nil,
          # Body param: Array of OnlyFans Creator User IDs to tag in your message
          rf_tag: nil,
          # Body param: The message text content. Required unless a media file is present.
          text: nil,
          request_options: {}
        )
        end

        # Unlike a chat message.
        sig do
          params(
            message_id: String,
            account: String,
            chat_id: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageUnlikeResponse)
        end
        def unlike(
          # The ID of the message to unlike
          message_id,
          # The Account ID
          account:,
          # The ID of the chat, usually a fan's OnlyFans User ID
          chat_id:,
          request_options: {}
        )
        end

        # Unpin a message from a chat.
        sig do
          params(
            message_id: String,
            account: String,
            chat_id: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Chats::MessageUnpinResponse)
        end
        def unpin(
          # The ID of the message to unpin
          message_id,
          # The Account ID
          account:,
          # The ID of the chat, usually a fan's OnlyFans User ID
          chat_id:,
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
