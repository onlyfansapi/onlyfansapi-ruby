# typed: strong

module Onlyfansapi
  module Resources
    class SavedForLater
      class Posts
        sig { returns(Onlyfansapi::Resources::SavedForLater::Posts::Settings) }
        attr_reader :settings

        # List all posts that are marked as "Save For Later".
        sig do
          params(
            account: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::SavedForLater::PostListResponse)
        end
        def list(
          # The Account ID
          account,
          # Maximum number of posts to return (default = 10)
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
