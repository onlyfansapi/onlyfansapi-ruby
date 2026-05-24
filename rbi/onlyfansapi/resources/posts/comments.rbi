# typed: strong

module Onlyfansapi
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::CommentCreateResponse)
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
            sort: Onlyfansapi::Posts::CommentListParams::Sort::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::CommentListResponse)
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::CommentDeleteResponse)
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::CommentLikeCommentResponse)
        end
        def like_comment(
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::CommentPinCommentResponse)
        end
        def pin_comment(
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::CommentUnlikeCommentResponse)
        end
        def unlike_comment(
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
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::Posts::CommentUnpinCommentResponse)
        end
        def unpin_comment(
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
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
