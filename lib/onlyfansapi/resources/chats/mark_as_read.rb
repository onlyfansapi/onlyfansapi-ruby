# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Chats
      class MarkAsRead
        # Mark all chats as read.
        #
        # @overload all(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Chats::MarkAsReadAllResponse]
        #
        # @see Onlyfansapi::Models::Chats::MarkAsReadAllParams
        def all(account, params = {})
          @client.request(
            method: :post,
            path: ["api/%1$s/chats/mark-as-read", account],
            model: Onlyfansapi::Models::Chats::MarkAsReadAllResponse,
            options: params[:request_options]
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
