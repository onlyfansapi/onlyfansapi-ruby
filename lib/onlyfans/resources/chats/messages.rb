# frozen_string_literal: true

module Onlyfans
  module Resources
    class Chats
      class Messages
        # Get a single chat message by its ID. Returns a 404 if the message does not exist
        # in the chat.
        #
        # @overload retrieve(message_id, account:, chat_id:, request_options: {})
        #
        # @param message_id [String] The ID of the message to retrieve
        #
        # @param account [String] The Account ID
        #
        # @param chat_id [String] The ID of the chat (usually a fan's OnlyFans User ID)
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageRetrieveResponse]
        #
        # @see Onlyfans::Models::Chats::MessageRetrieveParams
        def retrieve(message_id, params)
          parsed, options = Onlyfans::Chats::MessageRetrieveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          chat_id =
            parsed.delete(:chat_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/chats/%2$s/messages/%3$s", account, chat_id, message_id],
            model: Onlyfans::Models::Chats::MessageRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::Chats::MessageListParams} for more details.
        #
        # Get messages from a specific chat.
        #
        # @overload list(chat_id, account:, filter: nil, first_id: nil, last_id: nil, limit: nil, order: nil, skip_users: nil, request_options: {})
        #
        # @param chat_id [String] Path param: The ID of the chat (usually a fan's OnlyFans User ID)
        #
        # @param account [String] Path param: The Account ID
        #
        # @param filter [Symbol, Onlyfans::Models::Chats::MessageListParams::Filter] Query param: Filter by certain messages. Currently, only pins are filterable.
        #
        # @param first_id [String, nil] Query param: Use for pagination when `order=desc` (newest to oldest). Include th
        #
        # @param last_id [String, nil] Query param: Use for pagination when `order=asc` (oldest to newest). Include thi
        #
        # @param limit [String] Query param: The number of messages to return (default = 10, max = 100)
        #
        # @param order [String] Query param: Sort order for messages (desc or asc)
        #
        # @param skip_users [String] Query param: Whether to skip user details (`all` or `none`).
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageListResponse]
        #
        # @see Onlyfans::Models::Chats::MessageListParams
        def list(chat_id, params)
          parsed, options = Onlyfans::Chats::MessageListParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/chats/%2$s/messages", account, chat_id],
            query: query,
            model: Onlyfans::Models::Chats::MessageListResponse,
            options: options
          )
        end

        # Delete a message from a chat. Please note that ONLY messages sent less than 24
        # hours ago can be deleted.
        #
        # @overload delete(message_id, account:, chat_id:, request_options: {})
        #
        # @param message_id [String] The ID of the message to retrieve
        #
        # @param account [String] The Account ID
        #
        # @param chat_id [String] The ID of the chat (usually a fan's OnlyFans User ID)
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageDeleteResponse]
        #
        # @see Onlyfans::Models::Chats::MessageDeleteParams
        def delete(message_id, params)
          parsed, options = Onlyfans::Chats::MessageDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          chat_id =
            parsed.delete(:chat_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/chats/%2$s/messages/%3$s", account, chat_id, message_id],
            model: Onlyfans::Models::Chats::MessageDeleteResponse,
            options: options
          )
        end

        # Like a chat message.
        #
        # @overload like(message_id, account:, chat_id:, request_options: {})
        #
        # @param message_id [String] The ID of the message to like
        #
        # @param account [String] The Account ID
        #
        # @param chat_id [String] The ID of the chat, usually a fan's OnlyFans User ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageLikeResponse]
        #
        # @see Onlyfans::Models::Chats::MessageLikeParams
        def like(message_id, params)
          parsed, options = Onlyfans::Chats::MessageLikeParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          chat_id =
            parsed.delete(:chat_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/chats/%2$s/messages/%3$s/like", account, chat_id, message_id],
            model: Onlyfans::Models::Chats::MessageLikeResponse,
            options: options
          )
        end

        # Pin a message from a chat.
        #
        # @overload pin(message_id, account:, chat_id:, request_options: {})
        #
        # @param message_id [String] The ID of the message to pin
        #
        # @param account [String] The Account ID
        #
        # @param chat_id [String] The ID of the chat, usually a fan's OnlyFans User ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessagePinResponse]
        #
        # @see Onlyfans::Models::Chats::MessagePinParams
        def pin(message_id, params)
          parsed, options = Onlyfans::Chats::MessagePinParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          chat_id =
            parsed.delete(:chat_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/chats/%2$s/messages/%3$s/pin", account, chat_id, message_id],
            model: Onlyfans::Models::Chats::MessagePinResponse,
            options: options
          )
        end

        # Search messages in a specific chat. Returns a list of message IDs matching the
        # search query.
        #
        # @overload search(chat_id, account:, query:, request_options: {})
        #
        # @param chat_id [String] Path param: The ID of the chat (usually a fan's OnlyFans User ID)
        #
        # @param account [String] Path param: The Account ID
        #
        # @param query [String] Query param: The query search in messages.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageSearchResponse]
        #
        # @see Onlyfans::Models::Chats::MessageSearchParams
        def search(chat_id, params)
          parsed, options = Onlyfans::Chats::MessageSearchParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/chats/%2$s/messages/search", account, chat_id],
            query: query,
            model: Onlyfans::Models::Chats::MessageSearchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::Chats::MessageSendParams} for more details.
        #
        # Send a new message to a chat.
        #
        # @overload send_(chat_id, account:, block_banned_words: nil, giphy_id: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, reply_to_message_id: nil, rf_guest: nil, rf_partner: nil, rf_tag: nil, text: nil, request_options: {})
        #
        # @param chat_id [String] Path param: The ID of the chat (usually a fan's OnlyFans User ID)
        #
        # @param account [String] Path param: The Account ID
        #
        # @param block_banned_words [Symbol, Onlyfans::Models::Chats::MessageSendParams::BlockBannedWords] Body param: Screen `text` for OnlyFans banned words and block the send if any ar
        #
        # @param giphy_id [String] Body param: The ID of the Giphy GIF to attach to the message. Get IDs from the G
        #
        # @param locked_text [Boolean] Body param: Whether the text should be shown or hidden
        #
        # @param media_files [Array<Object>] Body param: Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will
        #
        # @param previews [Array<Object>] Body param: Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or inte
        #
        # @param price [Float] Body param: Price for paid content in USD (0 or between 3-200). In case this is
        #
        # @param reply_to_message_id [Integer] Body param: Mark this message as a reply to another (can be either your own, or
        #
        # @param rf_guest [String] Body param: Array of OnlyFans Release Form Guest IDs to tag in your message
        #
        # @param rf_partner [String] Body param: Array of OnlyFans Release Form Partners IDs to tag in your message
        #
        # @param rf_tag [String] Body param: Array of OnlyFans Creator User IDs to tag in your message
        #
        # @param text [String] Body param: The message text content. Required unless a media file is present.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageSendResponse]
        #
        # @see Onlyfans::Models::Chats::MessageSendParams
        def send_(chat_id, params)
          parsed, options = Onlyfans::Chats::MessageSendParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/chats/%2$s/messages", account, chat_id],
            body: parsed,
            model: Onlyfans::Models::Chats::MessageSendResponse,
            options: options
          )
        end

        # Unlike a chat message.
        #
        # @overload unlike(message_id, account:, chat_id:, request_options: {})
        #
        # @param message_id [String] The ID of the message to unlike
        #
        # @param account [String] The Account ID
        #
        # @param chat_id [String] The ID of the chat, usually a fan's OnlyFans User ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageUnlikeResponse]
        #
        # @see Onlyfans::Models::Chats::MessageUnlikeParams
        def unlike(message_id, params)
          parsed, options = Onlyfans::Chats::MessageUnlikeParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          chat_id =
            parsed.delete(:chat_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/chats/%2$s/messages/%3$s/unlike", account, chat_id, message_id],
            model: Onlyfans::Models::Chats::MessageUnlikeResponse,
            options: options
          )
        end

        # Unpin a message from a chat.
        #
        # @overload unpin(message_id, account:, chat_id:, request_options: {})
        #
        # @param message_id [String] The ID of the message to unpin
        #
        # @param account [String] The Account ID
        #
        # @param chat_id [String] The ID of the chat, usually a fan's OnlyFans User ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MessageUnpinResponse]
        #
        # @see Onlyfans::Models::Chats::MessageUnpinParams
        def unpin(message_id, params)
          parsed, options = Onlyfans::Chats::MessageUnpinParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          chat_id =
            parsed.delete(:chat_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/chats/%2$s/messages/%3$s/unpin", account, chat_id, message_id],
            model: Onlyfans::Models::Chats::MessageUnpinResponse,
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
end
