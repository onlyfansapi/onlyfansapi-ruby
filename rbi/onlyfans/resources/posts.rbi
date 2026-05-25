# typed: strong

module Onlyfans
  module Resources
    # APIs for managing OnlyFans posts
    class Posts
      sig { returns(Onlyfans::Resources::Posts::Comments) }
      attr_reader :comments

      # APIs for managing your post labels
      sig { returns(Onlyfans::Resources::Posts::Labels) }
      attr_reader :labels

      # Compose and send a new post to your OnlyFans account.
      sig do
        params(
          account: String,
          text: String,
          expire_days: Integer,
          fund_raising_target_amount: Integer,
          fund_raising_tips_presets: T::Array[String],
          label_ids: String,
          media_files: T::Array[T.anything],
          previews: T::Array[T.anything],
          rf_tag: String,
          save_for_later: T::Boolean,
          scheduled_date: String,
          voting_correct_index: Integer,
          voting_due: Integer,
          voting_options: T::Array[String],
          voting_type: Onlyfans::PostCreateParams::VotingType::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # The post text content
        text:,
        # Number of days after which the post will expire. Between 1 and 30 days. Keep
        # empty for no expiration.
        expire_days: nil,
        # Add a fundraising target to your post. If present, value must be at least 10.
        fund_raising_target_amount: nil,
        # Specify which tip amounts will be listed under the fundraising card. Required
        # with `fundRaisingTargetAmount`, and you must provide at least 1 option. Array
        # items cannot be higher than the `fundRaisingTargetAmount`.
        fund_raising_tips_presets: nil,
        # Array of OF label IDs. Refer to our `/posts/labels` endpoint.
        label_ids: nil,
        # Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs.
        media_files: nil,
        # Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
        # referencing uploaded files in `mediaFiles`. Will be shown if `price` is
        # provided.
        previews: nil,
        # Array OnlyFans creator user IDs to tag in your post
        rf_tag: nil,
        # Add your post to the "Saved for later" queue.
        save_for_later: nil,
        # Schedule your post in the future (UTC timezone).
        scheduled_date: nil,
        # The array key of your quiz' correct answer. Required when `votingType` is
        # "quiz". Keep in mind that arrays start at `0`
        voting_correct_index: nil,
        # The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days. Can only be
        # filled with `votingType`.
        voting_due: nil,
        # The options of your poll/quiz. Required with `votingType`.
        voting_options: nil,
        # Include a poll or quiz within your post.
        voting_type: nil,
        request_options: {}
      )
      end

      # Retrieve details of a post from your account.
      sig do
        params(
          post_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostRetrieveResponse)
      end
      def retrieve(
        # The ID of the post
        post_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Update a posted, queued, or "saved for later" post.
      sig do
        params(
          post_id: Integer,
          account: String,
          text: String,
          expire_days: Integer,
          fund_raising_target_amount: Integer,
          fund_raising_tips_presets: T::Array[String],
          label_ids: String,
          media_files: String,
          price: Integer,
          rf_tag: String,
          save_for_later: T::Boolean,
          scheduled_date: String,
          voting_correct_index: Integer,
          voting_due: Integer,
          voting_options: T::Array[String],
          voting_type: Onlyfans::PostUpdateParams::VotingType::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(String)
      end
      def update(
        # Path param: The ID of the post
        post_id,
        # Path param: The Account ID
        account:,
        # Body param: The post text content
        text:,
        # Body param: Number of days after which the post will expire. Between 1 and 30
        # days. Keep empty for no expiration.
        expire_days: nil,
        # Body param: Add a fundraising target to your post. If present, value must be at
        # least 10.
        fund_raising_target_amount: nil,
        # Body param: Specify which tip amounts will be listed under the fundraising card.
        # Required with `fundRaisingTargetAmount`, and you must provide at least 1 option.
        # Array items cannot be higher than the `fundRaisingTargetAmount`.
        fund_raising_tips_presets: nil,
        # Body param: Array of OF label IDs. Refer to our `/posts/labels` endpoint.
        label_ids: nil,
        # Body param: Array of OFAPI `ofapi_media_` IDs, or OF media IDs
        media_files: nil,
        # Body param: Price for paid content (0 or between 3-100). In case this is not
        # zero, **mediaFiles** is required
        price: nil,
        # Body param: Array OnlyFans creator user IDs to tag in your post
        rf_tag: nil,
        # Body param: Add your post to the "Saved for later" queue.
        save_for_later: nil,
        # Body param: Schedule your post in the future (UTC timezone).
        scheduled_date: nil,
        # Body param: The array key of your quiz' correct answer. Required when
        # `votingType` is "quiz". Keep in mind that arrays start at `0`
        voting_correct_index: nil,
        # Body param: The due date (in days) of your poll/quiz. Can be 1, 3, 7 or 30 days.
        # Can only be filled with `votingType`.
        voting_due: nil,
        # Body param: The options of your poll/quiz. Required with `votingType`.
        voting_options: nil,
        # Body param: Include a poll or quiz within your post.
        voting_type: nil,
        request_options: {}
      )
      end

      # Get posts from your OnlyFans account.
      sig do
        params(
          account: String,
          counters: T::Boolean,
          limit: Integer,
          minimum_publish_date: String,
          offset: Integer,
          order: Onlyfans::PostListParams::Order::OrSymbol,
          pinned: T::Boolean,
          query: String,
          sort: Onlyfans::PostListParams::Sort::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostListResponse)
      end
      def list(
        # The Account ID
        account,
        # Set to true to include an array of counters (see example responses)
        counters: nil,
        # Number of posts to return (default = 10)
        limit: nil,
        # Filter posts by minimum publish date
        minimum_publish_date: nil,
        # Number of posts to skip for pagination
        offset: nil,
        # Order the returned posts (default = publish_date)
        order: nil,
        # Set to true to only show pinned posts
        pinned: nil,
        # Search query to filter posts
        query: nil,
        # Sort the returned posts (default = desc)
        sort: nil,
        request_options: {}
      )
      end

      # Delete a post from your account.
      sig do
        params(
          post_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostDeleteResponse)
      end
      def delete(
        # The ID of the post
        post_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Archive a post from your account. Also can be used to move posts between the
      # Regular and Private Archive.
      sig do
        params(
          post_id: Integer,
          account: String,
          private_archive: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostArchiveResponse)
      end
      def archive(
        # Path param: The ID of the post
        post_id,
        # Path param: The Account ID
        account:,
        # Query param: Set to `true` to move this post to the Private Archive.
        private_archive: nil,
        request_options: {}
      )
      end

      # Pin or unpin a post to your account.
      sig do
        params(
          post_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostPinResponse)
      end
      def pin(
        # The ID of the post
        post_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Show the statistics of a post like purchases, views, likes, tips and more.
      sig do
        params(
          post_id: Integer,
          account: String,
          with_historical_data: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostStatsResponse)
      end
      def stats(
        # Path param: The ID of the post
        post_id,
        # Path param: The Account ID
        account:,
        # Query param: Set to `true` to include historical data for a post.
        with_historical_data: nil,
        request_options: {}
      )
      end

      # Unarchive a post from your account.
      sig do
        params(
          post_id: Integer,
          account: String,
          private_archive: T::Boolean,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::PostUnarchiveResponse)
      end
      def unarchive(
        # Path param: The ID of the post
        post_id,
        # Path param: The Account ID
        account:,
        # Query param: Set to `true` if this post is currently in the Private Archive.
        private_archive: nil,
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
