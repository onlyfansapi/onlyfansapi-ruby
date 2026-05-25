# typed: strong

module Onlyfans
  module Resources
    class Posts
      # APIs for managing your post labels
      class Labels
        # Create a new post label.
        sig do
          params(
            account: String,
            name: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::LabelCreateResponse)
        end
        def create(
          # The Account ID
          account,
          # The name of your new label
          name:,
          request_options: {}
        )
        end

        # List the labels that you can use to organize your posts.
        sig do
          params(
            account: String,
            limit: String,
            offset: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::LabelListResponse)
        end
        def list(
          # The Account ID
          account,
          # Number of labels to return (default = 10)
          limit: nil,
          # Number of labels to skip for pagination
          offset: nil,
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
