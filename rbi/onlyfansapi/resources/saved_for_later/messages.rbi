# typed: strong

module Onlyfansapi
  module Resources
    class SavedForLater
      class Messages
        sig do
          returns(Onlyfansapi::Resources::SavedForLater::Messages::Settings)
        end
        attr_reader :settings

        # List all messages that are marked as "Save For Later".
        sig do
          params(
            account: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::SavedForLater::MessageListResponse)
        end
        def list(
          # The Account ID
          account,
          # Maximum number of messages to return (default = 10)
          limit:,
          # Offset for pagination (default = 0)
          offset:,
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
