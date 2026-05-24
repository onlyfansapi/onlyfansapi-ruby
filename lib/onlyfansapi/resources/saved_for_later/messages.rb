# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class SavedForLater
      class Messages
        # @return [Onlyfansapi::Resources::SavedForLater::Messages::Settings]
        attr_reader :settings

        # List all messages that are marked as "Save For Later".
        #
        # @overload list(account, limit:, offset:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param limit [Integer] Maximum number of messages to return (default = 10)
        #
        # @param offset [Integer] Offset for pagination (default = 0)
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::SavedForLater::MessageListResponse]
        #
        # @see Onlyfansapi::Models::SavedForLater::MessageListParams
        def list(account, params)
          parsed, options = Onlyfansapi::SavedForLater::MessageListParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/saved-for-later/messages", account],
            query: query,
            model: Onlyfansapi::Models::SavedForLater::MessageListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfansapi::Client]
        def initialize(client:)
          @client = client
          @settings = Onlyfansapi::Resources::SavedForLater::Messages::Settings.new(client: client)
        end
      end
    end
  end
end
