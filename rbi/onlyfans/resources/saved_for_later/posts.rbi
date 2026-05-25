# typed: strong

module Onlyfans
  module Resources
    class SavedForLater
      class Posts
        sig { returns(Onlyfans::Resources::SavedForLater::Posts::Settings) }
        attr_reader :settings

        # List all posts that are marked as "Save For Later".
        sig do
          params(
            account: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::SavedForLater::PostListResponse)
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
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
