# typed: strong

module Onlyfans
  module Resources
    class Posts
      class Comments
        # Create a comment on one of your posts.
        sig do
          params(
            post_id: String,
            account: String,
            text: String,
            answer_to: Integer,
            giphy_id: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::CommentCreateResponse)
        end
        def create(
          # Path param: The ID of the post.
          post_id,
          # Path param: The Account ID
          account:,
          # Query param: The text of the comment.
          text:,
          # Query param: The ID of the comment to which this comment is a reply.
          answer_to: nil,
          # Query param: The ID of the Giphy to include in the comment.
          giphy_id: nil,
          request_options: {}
        )
        end

        # Get comments from one of your posts.
        sig do
          params(
            post_id: String,
            account: String,
            limit: Integer,
            offset: Integer,
            sort: Onlyfans::Posts::CommentListParams::Sort::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::CommentListResponse)
        end
        def list(
          # Path param: The ID of the post.
          post_id,
          # Path param: The Account ID
          account:,
          # Query param: Number of comments to return (default = 10)
          limit: nil,
          # Query param: Number of comments to skip for pagination
          offset: nil,
          # Query param: Sort the returned comments (default = desc)
          sort: nil,
          request_options: {}
        )
        end

        # Delete a comment on one of your posts.
        sig do
          params(
            comment_id: Integer,
            account: String,
            post_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::CommentDeleteResponse)
        end
        def delete(
          # The ID of the comment to delete.
          comment_id,
          # The Account ID
          account:,
          # The ID of the post to which the comment belongs.
          post_id:,
          request_options: {}
        )
        end

        # Like a comment on one of your posts.
        sig do
          params(
            comment_id: Integer,
            account: String,
            post_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::CommentLikeResponse)
        end
        def like(
          # The ID of the comment to like.
          comment_id,
          # The Account ID
          account:,
          # The ID of the post to which the comment belongs.
          post_id:,
          request_options: {}
        )
        end

        # Pin a comment on one of your posts.
        sig do
          params(
            comment_id: Integer,
            account: String,
            post_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::CommentPinResponse)
        end
        def pin(
          # The ID of the comment to pin.
          comment_id,
          # The Account ID
          account:,
          # The ID of the post to which the comment belongs.
          post_id:,
          request_options: {}
        )
        end

        # Unlike a comment on one of your posts.
        sig do
          params(
            comment_id: Integer,
            account: String,
            post_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::CommentUnlikeResponse)
        end
        def unlike(
          # The ID of the comment to like.
          comment_id,
          # The Account ID
          account:,
          # The ID of the post to which the comment belongs.
          post_id:,
          request_options: {}
        )
        end

        # Unpin a comment from one of your posts.
        sig do
          params(
            comment_id: Integer,
            account: String,
            post_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Posts::CommentUnpinResponse)
        end
        def unpin(
          # The ID of the comment to pin.
          comment_id,
          # The Account ID
          account:,
          # The ID of the post to which the comment belongs.
          post_id:,
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
