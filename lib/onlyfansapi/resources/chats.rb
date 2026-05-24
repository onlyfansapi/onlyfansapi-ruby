# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans chats
    class Chats
      # APIs for managing OnlyFans chats
      # @return [Onlyfansapi::Resources::Chats::Messages]
      attr_reader :messages

      # Get the list of chats for an Account.
      #
      # @overload list(account, limit: nil, offset: nil, order: nil, query: nil, skip_users: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [String] Number of chats to return (10, 20, or 30)
      #
      # @param offset [String] Number of chats to skip for pagination
      #
      # @param order [String] Sort order for chats (recent or old)
      #
      # @param query [String] Search query to filter chats
      #
      # @param skip_users [String] Whether to skip user details in response (all or none)
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ChatListResponse]
      #
      # @see Onlyfansapi::Models::ChatListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::ChatListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/chats", account],
          query: query,
          model: Onlyfansapi::Models::ChatListResponse,
          options: options
        )
      end

      # Calling this endpoint will show the target fan a "Model is typing..." note in
      # the chat for ~4 seconds. If you want to continue showing the indicator call this
      # endpoint multiple times. Free - no credits charged.
      #
      # @overload start_typing_indicator(chat_id, account:, request_options: {})
      #
      # @param chat_id [String] The ID of the chat (usually a fan's OnlyFans User ID)
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::ChatStartTypingIndicatorResponse]
      #
      # @see Onlyfansapi::Models::ChatStartTypingIndicatorParams
      def start_typing_indicator(chat_id, params)
        parsed, options = Onlyfansapi::ChatStartTypingIndicatorParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/chats/%2$s/typing", account, chat_id],
          model: Onlyfansapi::Models::ChatStartTypingIndicatorResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @messages = Onlyfansapi::Resources::Chats::Messages.new(client: client)
      end
    end
  end
end
