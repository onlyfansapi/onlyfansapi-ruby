# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Messages
      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::MessageAttachTagsParams} for more details.
      #
      # Attach Tags (Release Forms) to a message that has already been sent. Please
      # note, that this is a "sync" operation - for example, if you provide empty
      # `rfTag` it will remove all existing tags already attached to the message.
      #
      # @overload attach_tags(message_id, account:, rf_guest: nil, rf_partner: nil, rf_tag: nil, request_options: {})
      #
      # @param message_id [String] Path param: The ID of the message to attach the release forms to. This can be ON
      #
      # @param account [String] Path param: The Account ID
      #
      # @param rf_guest [String] Body param: Array of OnlyFans Release Form Guest IDs to tag in your message
      #
      # @param rf_partner [String] Body param: Array of OnlyFans Release Form Partners IDs to tag in your message
      #
      # @param rf_tag [String] Body param: Array of OnlyFans Creator User IDs to tag in your message
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::MessageAttachTagsResponse]
      #
      # @see Onlyfansapi::Models::MessageAttachTagsParams
      def attach_tags(message_id, params)
        parsed, options = Onlyfansapi::MessageAttachTagsParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/messages/%2$s/attach-tags", account, message_id],
          body: parsed,
          model: Onlyfansapi::Models::MessageAttachTagsResponse,
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
