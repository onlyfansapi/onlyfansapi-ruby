# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Chats
      # APIs for managing OnlyFans chats
      class Messages
        # Get messages from a specific chat.
        #
        # @overload list(chat_id, account:, id: nil, order: nil, skip_users: nil, request_options: {})
        #
        # @param chat_id [String] Path param: The ID of the chat (usually a fan's OnlyFans User ID)
        #
        # @param account [String] Path param: The Account ID
        #
        # @param id [String] Query param: ID of the last message from previous page. Used for pagination
        #
        # @param order [String] Query param: Sort order for messages (desc or asc)
        #
        # @param skip_users [String] Query param: Whether to skip user details (all or none)
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Chats::MessageListResponse]
        #
        # @see Onlyfansapi::Models::Chats::MessageListParams
        def list(chat_id, params)
          parsed, options = Onlyfansapi::Chats::MessageListParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/chats/%2$s/messages", account, chat_id],
            query: query,
            model: Onlyfansapi::Models::Chats::MessageListResponse,
            options: options
          )
        end

        # Delete a message from a chat. Please note that ONLY messages sent less than 24
        # hours ago can be deleted.
        #
        # @overload delete(message_id, account:, chat_id:, request_options: {})
        #
        # @param message_id [String] The ID of the message to delete
        #
        # @param account [String] The Account ID
        #
        # @param chat_id [String] The ID of the chat, usually a fan's OnlyFans User ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Chats::MessageDeleteResponse]
        #
        # @see Onlyfansapi::Models::Chats::MessageDeleteParams
        def delete(message_id, params)
          parsed, options = Onlyfansapi::Chats::MessageDeleteParams.dump_request(params)
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
            model: Onlyfansapi::Models::Chats::MessageDeleteResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfansapi::Models::Chats::MessageSendParams} for more details.
        #
        # Send a new message to a chat.
        #
        # @overload send_(chat_id, account:, text:, locked_text: nil, media_files: nil, previews: nil, price: nil, request_options: {})
        #
        # @param chat_id [String] Path param: The ID of the chat (usually a fan's OnlyFans User ID)
        #
        # @param account [String] Path param: The Account ID
        #
        # @param text [String] Body param: The message text content
        #
        # @param locked_text [Boolean] Body param: Whether the text should be shown or hidden
        #
        # @param media_files [Array<String>] Body param: Array of media file upload prefixed_ids, or OF media IDs (required i
        #
        # @param previews [Array<String>] Body param: Array of media file upload prefixed_ids, or OF media IDs (required i
        #
        # @param price [Integer] Body param: Price for paid content (0 or between 3-200). In case this is not zer
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Chats::MessageSendResponse]
        #
        # @see Onlyfansapi::Models::Chats::MessageSendParams
        def send_(chat_id, params)
          parsed, options = Onlyfansapi::Chats::MessageSendParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/chats/%2$s/messages", account, chat_id],
            body: parsed,
            model: Onlyfansapi::Models::Chats::MessageSendResponse,
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
end
