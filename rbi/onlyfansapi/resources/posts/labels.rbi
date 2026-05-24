# typed: strong

module Onlyfansapi
  module Resources
    class Posts
      # APIs for managing your post labels
      class Labels
        # Create a new post label.
        sig do
          params(
            account: String,
            name: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::LabelCreateResponse)
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::LabelListResponse)
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
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
