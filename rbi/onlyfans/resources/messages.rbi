# typed: strong

module Onlyfans
  module Resources
    class Messages
      # Attach Tags (Release Forms) to a message that has already been sent. Please
      # note, that this is a "sync" operation - for example, if you provide empty
      # `rfTag` it will remove all existing tags already attached to the message.
      sig do
        params(
          message_id: String,
          account: String,
          rf_guest: String,
          rf_partner: String,
          rf_tag: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::MessageAttachTagsResponse)
      end
      def attach_tags(
        # Path param: The ID of the message to attach the release forms to. This can be
        # ONLY a message sent by the creator.
        message_id,
        # Path param: The Account ID
        account:,
        # Body param: Array of OnlyFans Release Form Guest IDs to tag in your message
        rf_guest: nil,
        # Body param: Array of OnlyFans Release Form Partners IDs to tag in your message
        rf_partner: nil,
        # Body param: Array of OnlyFans Creator User IDs to tag in your message
        rf_tag: nil,
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
