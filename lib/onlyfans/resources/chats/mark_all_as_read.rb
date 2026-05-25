# frozen_string_literal: true

module Onlyfans
  module Resources
    class Chats
      class MarkAllAsRead
        # Mark all chats as read.
        #
        # @overload all(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Chats::MarkAllAsReadAllResponse]
        #
        # @see Onlyfans::Models::Chats::MarkAllAsReadAllParams
        def all(account, params = {})
          @client.request(
            method: :post,
            path: ["api/%1$s/chats/mark-as-read", account],
            model: Onlyfans::Models::Chats::MarkAllAsReadAllResponse,
            options: params[:request_options]
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
