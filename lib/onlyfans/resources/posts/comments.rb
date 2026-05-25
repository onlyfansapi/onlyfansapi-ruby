# frozen_string_literal: true

module Onlyfans
  module Resources
    class Posts
      class Comments
        # Create a comment on one of your posts.
        #
        # @overload create(post_id, account:, text:, answer_to: nil, giphy_id: nil, request_options: {})
        #
        # @param post_id [String] Path param: The ID of the post.
        #
        # @param account [String] Path param: The Account ID
        #
        # @param text [String] Query param: The text of the comment.
        #
        # @param answer_to [Integer] Query param: The ID of the comment to which this comment is a reply.
        #
        # @param giphy_id [String] Query param: The ID of the Giphy to include in the comment.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::CommentCreateResponse]
        #
        # @see Onlyfans::Models::Posts::CommentCreateParams
        def create(post_id, params)
          parsed, options = Onlyfans::Posts::CommentCreateParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/posts/%2$s/comments", account, post_id],
            query: query.transform_keys(answer_to: "answerTo", giphy_id: "giphyId"),
            model: Onlyfans::Models::Posts::CommentCreateResponse,
            options: options
          )
        end

        # Get comments from one of your posts.
        #
        # @overload list(post_id, account:, limit: nil, offset: nil, sort: nil, request_options: {})
        #
        # @param post_id [String] Path param: The ID of the post.
        #
        # @param account [String] Path param: The Account ID
        #
        # @param limit [Integer] Query param: Number of comments to return (default = 10)
        #
        # @param offset [Integer] Query param: Number of comments to skip for pagination
        #
        # @param sort [Symbol, Onlyfans::Models::Posts::CommentListParams::Sort] Query param: Sort the returned comments (default = desc)
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::CommentListResponse]
        #
        # @see Onlyfans::Models::Posts::CommentListParams
        def list(post_id, params)
          parsed, options = Onlyfans::Posts::CommentListParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/posts/%2$s/comments", account, post_id],
            query: query,
            model: Onlyfans::Models::Posts::CommentListResponse,
            options: options
          )
        end

        # Delete a comment on one of your posts.
        #
        # @overload delete(comment_id, account:, post_id:, request_options: {})
        #
        # @param comment_id [Integer] The ID of the comment to delete.
        #
        # @param account [String] The Account ID
        #
        # @param post_id [Integer] The ID of the post to which the comment belongs.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::CommentDeleteResponse]
        #
        # @see Onlyfans::Models::Posts::CommentDeleteParams
        def delete(comment_id, params)
          parsed, options = Onlyfans::Posts::CommentDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          post_id =
            parsed.delete(:post_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/posts/%2$s/comments/%3$s", account, post_id, comment_id],
            model: Onlyfans::Models::Posts::CommentDeleteResponse,
            options: options
          )
        end

        # Like a comment on one of your posts.
        #
        # @overload like(comment_id, account:, post_id:, request_options: {})
        #
        # @param comment_id [Integer] The ID of the comment to like.
        #
        # @param account [String] The Account ID
        #
        # @param post_id [Integer] The ID of the post to which the comment belongs.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::CommentLikeResponse]
        #
        # @see Onlyfans::Models::Posts::CommentLikeParams
        def like(comment_id, params)
          parsed, options = Onlyfans::Posts::CommentLikeParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          post_id =
            parsed.delete(:post_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/posts/%2$s/comments/%3$s/like", account, post_id, comment_id],
            model: Onlyfans::Models::Posts::CommentLikeResponse,
            options: options
          )
        end

        # Pin a comment on one of your posts.
        #
        # @overload pin(comment_id, account:, post_id:, request_options: {})
        #
        # @param comment_id [Integer] The ID of the comment to pin.
        #
        # @param account [String] The Account ID
        #
        # @param post_id [Integer] The ID of the post to which the comment belongs.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::CommentPinResponse]
        #
        # @see Onlyfans::Models::Posts::CommentPinParams
        def pin(comment_id, params)
          parsed, options = Onlyfans::Posts::CommentPinParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          post_id =
            parsed.delete(:post_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["api/%1$s/posts/%2$s/comments/%3$s/pin", account, post_id, comment_id],
            model: Onlyfans::Models::Posts::CommentPinResponse,
            options: options
          )
        end

        # Unlike a comment on one of your posts.
        #
        # @overload unlike(comment_id, account:, post_id:, request_options: {})
        #
        # @param comment_id [Integer] The ID of the comment to like.
        #
        # @param account [String] The Account ID
        #
        # @param post_id [Integer] The ID of the post to which the comment belongs.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::CommentUnlikeResponse]
        #
        # @see Onlyfans::Models::Posts::CommentUnlikeParams
        def unlike(comment_id, params)
          parsed, options = Onlyfans::Posts::CommentUnlikeParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          post_id =
            parsed.delete(:post_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/posts/%2$s/comments/%3$s/like", account, post_id, comment_id],
            model: Onlyfans::Models::Posts::CommentUnlikeResponse,
            options: options
          )
        end

        # Unpin a comment from one of your posts.
        #
        # @overload unpin(comment_id, account:, post_id:, request_options: {})
        #
        # @param comment_id [Integer] The ID of the comment to pin.
        #
        # @param account [String] The Account ID
        #
        # @param post_id [Integer] The ID of the post to which the comment belongs.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::CommentUnpinResponse]
        #
        # @see Onlyfans::Models::Posts::CommentUnpinParams
        def unpin(comment_id, params)
          parsed, options = Onlyfans::Posts::CommentUnpinParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          post_id =
            parsed.delete(:post_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/posts/%2$s/comments/%3$s/pin", account, post_id, comment_id],
            model: Onlyfans::Models::Posts::CommentUnpinResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
