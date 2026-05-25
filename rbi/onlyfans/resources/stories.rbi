# typed: strong

module Onlyfans
  module Resources
    # APIs for managing OnlyFans stories
    class Stories
      # APIs for managing OnlyFans story highlights
      sig { returns(Onlyfans::Resources::Stories::Highlights) }
      attr_reader :highlights

      # Post a new media or vault file to your story.
      sig do
        params(
          account: String,
          media_files: T::Array[String],
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryCreateResponse)
      end
      def create(
        # The Account ID
        account,
        # Array of media file upload prefixed_ids, or OF media IDs (required if price is
        # not 0).
        media_files:,
        request_options: {}
      )
      end

      # Retrieve details of a specific story by its ID.
      sig do
        params(
          story_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryRetrieveResponse)
      end
      def retrieve(
        # The ID of the story to retrieve
        story_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Delete a specific story by its ID.
      sig do
        params(
          story_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryDeleteResponse)
      end
      def delete(
        # The ID of the story to retrieve
        story_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Retrieve a list of your currently active stories.
      sig do
        params(
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryListActiveResponse)
      end
      def list_active(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Retrieve a list of your archived stories.
      sig do
        params(
          account: String,
          limit: Integer,
          marker: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryListArchiveResponse)
      end
      def list_archive(
        # The Account ID
        account,
        # Number of stories to return (default = 18)
        limit: nil,
        # The marker used for pagination. Default: `null`
        marker: nil,
        request_options: {}
      )
      end

      # Retrieve the list of viewers for a specific story by its ID.
      sig do
        params(
          story_id: Integer,
          account: String,
          limit: T.nilable(Integer),
          offset: T.nilable(Integer),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryListViewersResponse)
      end
      def list_viewers(
        # Path param: The ID of the story to get viewers for
        story_id,
        # Path param: The Account ID
        account:,
        # Query param: The number of story viewers to return. Default `8`
        limit: nil,
        # Query param: The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      # Mark a specific story as watched by its ID.
      sig do
        params(
          story_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryMarkAsWatchedResponse)
      end
      def mark_as_watched(
        # The ID of the story to mark as watched.
        story_id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Retrieve viewer count, likes count, comments count, and tips statistics for a
      # specific story by its ID.
      sig do
        params(
          story_id: Integer,
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::StoryRetrieveStatsResponse)
      end
      def retrieve_stats(
        # The ID of the story to get stats for
        story_id,
        # The Account ID
        account:,
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
