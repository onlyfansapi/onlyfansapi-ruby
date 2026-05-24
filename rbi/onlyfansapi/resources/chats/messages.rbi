# typed: strong

module Onlyfansapi
  module Resources
    class Chats
      # APIs for managing OnlyFans chats
      class Messages
        # Get messages from a specific chat.
        sig do
          params(
            chat_id: String,
            account: String,
            id: String,
            order: String,
            skip_users: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Chats::MessageListResponse)
        end
        def list(
          # Path param: The ID of the chat (usually a fan's OnlyFans User ID)
          chat_id,
          # Path param: The Account ID
          account:,
          # Query param: ID of the last message from previous page. Used for pagination
          id: nil,
          # Query param: Sort order for messages (desc or asc)
          order: nil,
          # Query param: Whether to skip user details (all or none)
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Chats::MessageDeleteResponse)
        end
        def delete(
          # The ID of the message to delete
          message_id,
          # The Account ID
          account:,
          # The ID of the chat, usually a fan's OnlyFans User ID
          chat_id:,
          request_options: {}
        )
        end

        # Send a new message to a chat.
        sig do
          params(
            chat_id: String,
            account: String,
            text: String,
            locked_text: T::Boolean,
            media_files: T::Array[String],
            previews: T::Array[String],
            price: Integer,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Chats::MessageSendResponse)
        end
        def send_(
          # Path param: The ID of the chat (usually a fan's OnlyFans User ID)
          chat_id,
          # Path param: The Account ID
          account:,
          # Body param: The message text content
          text:,
          # Body param: Whether the text should be shown or hidden
          locked_text: nil,
          # Body param: Array of media file upload prefixed_ids, or OF media IDs (required
          # if price is not 0). Will be hidden if `price` is provided.
          media_files: nil,
          # Body param: Array of media file upload prefixed_ids, or OF media IDs (required
          # if price is not 0). Will be shown if `price` is provided. All `previews` values
          # must also exist in the `mediaFiles` array.
          previews: nil,
          # Body param: Price for paid content (0 or between 3-200). In case this is not
          # zero, **mediaFiles** is required
          price: nil,
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
end
