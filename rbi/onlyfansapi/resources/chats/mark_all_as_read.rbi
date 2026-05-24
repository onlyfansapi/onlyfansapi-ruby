# typed: strong

module Onlyfansapi
  module Resources
    class Chats
      class MarkAllAsRead
        # Mark all chats as read.
        sig do
          params(
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Chats::MarkAllAsReadAllResponse)
        end
        def all(
          # The Account ID
          account,
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
