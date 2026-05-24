# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans posts
    class Posts
      # @return [Onlyfansapi::Resources::Posts::Comments]
      attr_reader :comments

      # APIs for managing your post labels
      # @return [Onlyfansapi::Resources::Posts::Labels]
      attr_reader :labels

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::PostCreateParams} for more details.
      #
      # Compose and send a new post to your OnlyFans account.
      #
      # @overload create(account, text:, expire_days: nil, fund_raising_target_amount: nil, fund_raising_tips_presets: nil, label_ids: nil, media_files: nil, previews: nil, rf_tag: nil, save_for_later: nil, scheduled_date: nil, voting_correct_index: nil, voting_due: nil, voting_options: nil, voting_type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param text [String] The post text content
      #
      # @param expire_days [Integer] Number of days after which the post will expire. Between 1 and 30 days. Keep emp
      #
      # @param fund_raising_target_amount [Integer] Add a fundraising target to your post. If present, value must be at least 10.
      #
      # @param fund_raising_tips_presets [Array<String>] Specify which tip amounts will be listed under the fundraising card. Required wi
      #
      # @param label_ids [String] Array of OF label IDs. Refer to our `/posts/labels` endpoint.
      #
      # @param media_files [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs.
      #
      # @param previews [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
      #
      # @param rf_tag [String] Array OnlyFans creator user IDs to tag in your post
      #
      # @param save_for_later [Boolean] Add your post to the "Saved for later" queue.
      #
      # @param scheduled_date [String] Schedule your post in the future (UTC timezone).
      #
      # @param voting_correct_index [Integer] The array key of your quiz' correct answer. Required when `votingType` is "quiz"
      #
      # @param voting_due [Integer] The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days. Can only be
      #
      # @param voting_options [Array<String>] The options of your poll/quiz. Required with `votingType`.
      #
      # @param voting_type [Symbol, Onlyfansapi::Models::PostCreateParams::VotingType] Include a poll or quiz within your post.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostCreateResponse]
      #
      # @see Onlyfansapi::Models::PostCreateParams
      def create(account, params)
        parsed, options = Onlyfansapi::PostCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/posts", account],
          body: parsed,
          model: Onlyfansapi::Models::PostCreateResponse,
          options: options
        )
      end

      # Retrieve details of a post from your account.
      #
      # @overload retrieve(post_id, account:, request_options: {})
      #
      # @param post_id [Integer] The ID of the post
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostRetrieveResponse]
      #
      # @see Onlyfansapi::Models::PostRetrieveParams
      def retrieve(post_id, params)
        parsed, options = Onlyfansapi::PostRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/posts/%2$s", account, post_id],
          model: Onlyfansapi::Models::PostRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::PostUpdateParams} for more details.
      #
      # Update a posted, queued, or "saved for later" post.
      #
      # @overload update(post_id, account:, text:, expire_days: nil, fund_raising_target_amount: nil, fund_raising_tips_presets: nil, label_ids: nil, media_files: nil, price: nil, rf_tag: nil, save_for_later: nil, scheduled_date: nil, voting_correct_index: nil, voting_due: nil, voting_options: nil, voting_type: nil, request_options: {})
      #
      # @param post_id [Integer] Path param: The ID of the post
      #
      # @param account [String] Path param: The Account ID
      #
      # @param text [String] Body param: The post text content
      #
      # @param expire_days [Integer] Body param: Number of days after which the post will expire. Between 1 and 30 da
      #
      # @param fund_raising_target_amount [Integer] Body param: Add a fundraising target to your post. If present, value must be at
      #
      # @param fund_raising_tips_presets [Array<String>] Body param: Specify which tip amounts will be listed under the fundraising card.
      #
      # @param label_ids [String] Body param: Array of OF label IDs. Refer to our `/posts/labels` endpoint.
      #
      # @param media_files [String] Body param: Array of OFAPI `ofapi_media_` IDs, or OF media IDs
      #
      # @param price [Integer] Body param: Price for paid content (0 or between 3-100). In case this is not zer
      #
      # @param rf_tag [String] Body param: Array OnlyFans creator user IDs to tag in your post
      #
      # @param save_for_later [Boolean] Body param: Add your post to the "Saved for later" queue.
      #
      # @param scheduled_date [String] Body param: Schedule your post in the future (UTC timezone).
      #
      # @param voting_correct_index [Integer] Body param: The array key of your quiz' correct answer. Required when `votingTyp
      #
      # @param voting_due [Integer] Body param: The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days.
      #
      # @param voting_options [Array<String>] Body param: The options of your poll/quiz. Required with `votingType`.
      #
      # @param voting_type [Symbol, Onlyfansapi::Models::PostUpdateParams::VotingType] Body param: Include a poll or quiz within your post.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Onlyfansapi::Models::PostUpdateParams
      def update(post_id, params)
        parsed, options = Onlyfansapi::PostUpdateParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/%1$s/posts/%2$s", account, post_id],
          headers: {"accept" => "text/plain"},
          body: parsed,
          model: String,
          options: options
        )
      end

      # Get posts from your OnlyFans account.
      #
      # @overload list(account, counters: nil, limit: nil, minimum_publish_date: nil, offset: nil, order: nil, pinned: nil, query: nil, sort: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param counters [Boolean] Set to true to include an array of counters (see example responses)
      #
      # @param limit [Integer] Number of posts to return (default = 10)
      #
      # @param minimum_publish_date [String] Filter posts by minimum publish date
      #
      # @param offset [Integer] Number of posts to skip for pagination
      #
      # @param order [Symbol, Onlyfansapi::Models::PostListParams::Order] Order the returned posts (default = publish_date)
      #
      # @param pinned [Boolean] Set to true to only show pinned posts
      #
      # @param query [String] Search query to filter posts
      #
      # @param sort [Symbol, Onlyfansapi::Models::PostListParams::Sort] Sort the returned posts (default = desc)
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostListResponse]
      #
      # @see Onlyfansapi::Models::PostListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::PostListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/posts", account],
          query: query.transform_keys(minimum_publish_date: "minimumPublishDate"),
          model: Onlyfansapi::Models::PostListResponse,
          options: options
        )
      end

      # Delete a post from your account.
      #
      # @overload delete(post_id, account:, request_options: {})
      #
      # @param post_id [Integer] The ID of the post
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostDeleteResponse]
      #
      # @see Onlyfansapi::Models::PostDeleteParams
      def delete(post_id, params)
        parsed, options = Onlyfansapi::PostDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/posts/%2$s", account, post_id],
          model: Onlyfansapi::Models::PostDeleteResponse,
          options: options
        )
      end

      # Archive a post from your account. Also can be used to move posts between the
      # Regular and Private Archive.
      #
      # @overload archive(post_id, account:, private_archive: nil, request_options: {})
      #
      # @param post_id [Integer] Path param: The ID of the post
      #
      # @param account [String] Path param: The Account ID
      #
      # @param private_archive [Boolean] Query param: Set to `true` to move this post to the Private Archive.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostArchiveResponse]
      #
      # @see Onlyfansapi::Models::PostArchiveParams
      def archive(post_id, params)
        parsed, options = Onlyfansapi::PostArchiveParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/posts/%2$s/archive", account, post_id],
          query: query,
          model: Onlyfansapi::Models::PostArchiveResponse,
          options: options
        )
      end

      # Pin or unpin a post to your account.
      #
      # @overload pin(post_id, account:, request_options: {})
      #
      # @param post_id [Integer] The ID of the post
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostPinResponse]
      #
      # @see Onlyfansapi::Models::PostPinParams
      def pin(post_id, params)
        parsed, options = Onlyfansapi::PostPinParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/posts/%2$s/pin", account, post_id],
          model: Onlyfansapi::Models::PostPinResponse,
          options: options
        )
      end

      # Show the statistics of a post like purchases, views, likes, tips and more.
      #
      # @overload stats(post_id, account:, with_historical_data: nil, request_options: {})
      #
      # @param post_id [Integer] Path param: The ID of the post
      #
      # @param account [String] Path param: The Account ID
      #
      # @param with_historical_data [Boolean] Query param: Set to `true` to include historical data for a post.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostStatsResponse]
      #
      # @see Onlyfansapi::Models::PostStatsParams
      def stats(post_id, params)
        parsed, options = Onlyfansapi::PostStatsParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/posts/%2$s/stats", account, post_id],
          query: query,
          model: Onlyfansapi::Models::PostStatsResponse,
          options: options
        )
      end

      # Unarchive a post from your account.
      #
      # @overload unarchive(post_id, account:, private_archive: nil, request_options: {})
      #
      # @param post_id [Integer] Path param: The ID of the post
      #
      # @param account [String] Path param: The Account ID
      #
      # @param private_archive [Boolean] Query param: Set to `true` if this post is currently in the Private Archive.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PostUnarchiveResponse]
      #
      # @see Onlyfansapi::Models::PostUnarchiveParams
      def unarchive(post_id, params)
        parsed, options = Onlyfansapi::PostUnarchiveParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/posts/%2$s/unarchive", account, post_id],
          query: query,
          model: Onlyfansapi::Models::PostUnarchiveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @comments = Onlyfansapi::Resources::Posts::Comments.new(client: client)
        @labels = Onlyfansapi::Resources::Posts::Labels.new(client: client)
      end
    end
  end
end
