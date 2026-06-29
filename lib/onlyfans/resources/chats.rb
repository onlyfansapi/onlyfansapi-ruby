# frozen_string_literal: true

module Onlyfans
  module Resources
    class Chats
      # @return [Onlyfans::Resources::Chats::Messages]
      attr_reader :messages

      # @return [Onlyfans::Resources::Chats::MarkAllAsRead]
      attr_reader :mark_all_as_read

      # Get the list of chats for an Account.
      #
      # @overload list(account, filter: nil, limit: nil, offset: nil, order: nil, query: nil, skip_users: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Symbol, Onlyfans::Models::ChatListParams::Filter] Optionally, filter the chats by type.
      #
      # @param limit [String] Number of chats to return (1 - 100). Default = 10
      #
      # @param offset [String] Number of chats to skip for pagination
      #
      # @param order [Symbol, Onlyfans::Models::ChatListParams::Order] Sort order for chats (recent or old). Default = recent
      #
      # @param query [String] Search query to filter chats
      #
      # @param skip_users [Symbol, Onlyfans::Models::ChatListParams::SkipUsers] Whether to skip user details in response (all or none). Default = all
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatListResponse]
      #
      # @see Onlyfans::Models::ChatListParams
      def list(account, params = {})
        parsed, options = Onlyfans::ChatListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/chats", account],
          query: query,
          model: Onlyfans::Models::ChatListResponse,
          options: options
        )
      end

      # Delete a specific chat.
      #
      # @overload delete(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat to delete, usually a fan's OnlyFans User ID
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatDeleteResponse]
      #
      # @see Onlyfans::Models::ChatDeleteParams
      def delete(chat_id, params)
        parsed, options = Onlyfans::ChatDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/chats/%2$s", account, chat_id],
          model: Onlyfans::Models::ChatDeleteResponse,
          options: options
        )
      end

      # Hide a specific chat from the chat list. To unhide this chat, send a new message
      # to the user.
      #
      # @overload hide(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat to hide, usually a fan's OnlyFans User ID
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatHideResponse]
      #
      # @see Onlyfans::Models::ChatHideParams
      def hide(chat_id, params)
        parsed, options = Onlyfans::ChatHideParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/chats/%2$s/hide", account, chat_id],
          model: Onlyfans::Models::ChatHideResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::ChatListMediaParams} for more details.
      #
      # List media files shared in a specific chat.
      #
      # @overload list_media(chat_id, account:, limit: nil, offset: nil, skip_users: nil, type: nil, request_options: {})
      #
      # @param chat_id [String] Path param: The ID of the chat to get media from, usually a fan's OnlyFans User
      #
      # @param account [String] Path param: The Account ID
      #
      # @param limit [String] Query param: Number of medias to return. Default = 20
      #
      # @param offset [String] Query param: Number of medias to skip for pagination
      #
      # @param skip_users [String] Query param: Whether to skip user details in response (all or none). Default = a
      #
      # @param type [Symbol, Onlyfans::Models::ChatListMediaParams::Type, nil] Query param: Filter by specific media types. Keep empty to return all.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatListMediaResponse]
      #
      # @see Onlyfans::Models::ChatListMediaParams
      def list_media(chat_id, params)
        parsed, options = Onlyfans::ChatListMediaParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/chats/%2$s/media", account, chat_id],
          query: query,
          model: Onlyfans::Models::ChatListMediaResponse,
          options: options
        )
      end

      # Mark a specific chat as read. Alternative to List Chat Messages endpoint, if you
      # just want to mark the chat as read without fetching messages.
      #
      # @overload mark_as_read(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat to mark as read, usually a fan's OnlyFans User ID
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatMarkAsReadResponse]
      #
      # @see Onlyfans::Models::ChatMarkAsReadParams
      def mark_as_read(chat_id, params)
        parsed, options = Onlyfans::ChatMarkAsReadParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/chats/%2$s/mark-as-read", account, chat_id],
          model: Onlyfans::Models::ChatMarkAsReadResponse,
          options: options
        )
      end

      # Mark a specific chat as unread.
      #
      # @overload mark_as_unread(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat to mark as read, usually a fan's OnlyFans User ID
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatMarkAsUnreadResponse]
      #
      # @see Onlyfans::Models::ChatMarkAsUnreadParams
      def mark_as_unread(chat_id, params)
        parsed, options = Onlyfans::ChatMarkAsUnreadParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/chats/%2$s/mark-as-unread", account, chat_id],
          model: Onlyfans::Models::ChatMarkAsUnreadResponse,
          options: options
        )
      end

      # Mute notifications for a specific chat.
      #
      # @overload mute(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat to mute, usually a fan's OnlyFans User ID
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatMuteResponse]
      #
      # @see Onlyfans::Models::ChatMuteParams
      def mute(chat_id, params)
        parsed, options = Onlyfans::ChatMuteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/chats/%2$s/mute", account, chat_id],
          model: Onlyfans::Models::ChatMuteResponse,
          options: options
        )
      end

      # Calling this endpoint will show the target fan a "Model is typing..." note in
      # the chat for ~4 seconds. Duplicate calls for the same account and chat are
      # coalesced during that window.
      #
      # @overload start_typing(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat (usually a fan's OnlyFans User ID)
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatStartTypingResponse]
      #
      # @see Onlyfans::Models::ChatStartTypingParams
      def start_typing(chat_id, params)
        parsed, options = Onlyfans::ChatStartTypingParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/chats/%2$s/typing", account, chat_id],
          model: Onlyfans::Models::ChatStartTypingResponse,
          options: options
        )
      end

      # Unmute notifications for a specific chat.
      #
      # @overload unmute(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat to unmute, usually a fan's OnlyFans User ID
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChatUnmuteResponse]
      #
      # @see Onlyfans::Models::ChatUnmuteParams
      def unmute(chat_id, params)
        parsed, options = Onlyfans::ChatUnmuteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/chats/%2$s/unmute", account, chat_id],
          model: Onlyfans::Models::ChatUnmuteResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @messages = Onlyfans::Resources::Chats::Messages.new(client: client)
        @mark_all_as_read = Onlyfans::Resources::Chats::MarkAllAsRead.new(client: client)
      end
    end
  end
end
