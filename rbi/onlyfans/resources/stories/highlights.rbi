# typed: strong

module Onlyfans
  module Resources
    class Stories
      # APIs for managing OnlyFans story highlights
      class Highlights
        # Create a new story highlight.
        sig do
          params(
            account: String,
            cover_story_id: Integer,
            story_ids: T::Array[String],
            title: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Stories::HighlightCreateResponse)
        end
        def create(
          # The Account ID
          account,
          # The ID of the story to use as the cover for the highlight
          cover_story_id:,
          # An array of story IDs to include in the highlight
          story_ids:,
          # The title of the story highlight
          title:,
          request_options: {}
        )
        end

        # Retrieve details of a specific story highlight by its ID.
        sig do
          params(
            highlight_id: Integer,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Stories::HighlightRetrieveResponse)
        end
        def retrieve(
          # The ID of the story highlight to retrieve
          highlight_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Update the details of a specific story highlight by its ID.
        sig do
          params(
            highlight_id: Integer,
            account: String,
            cover_story_id: Integer,
            story_ids: T::Array[String],
            title: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Stories::HighlightUpdateResponse)
        end
        def update(
          # Path param: The ID of the story highlight to retrieve
          highlight_id,
          # Path param: The Account ID
          account:,
          # Body param: The ID of the story to use as the cover for the highlight. Provide
          # the old value if you don't want to change it.
          cover_story_id:,
          # Body param: An array of story IDs to include in the highlight. Provide the old
          # value if you don't want to change it.
          story_ids:,
          # Body param: The new title for the story highlight. Provide the old value if you
          # don't want to change it.
          title:,
          request_options: {}
        )
        end

        # Retrieve a list of your story highlights.
        sig do
          params(
            account: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Stories::HighlightListResponse)
        end
        def list(
          # The Account ID
          account,
          # Number of highlights to return (default = 5)
          limit: nil,
          # Number of highlights to skip for pagination
          offset: nil,
          request_options: {}
        )
        end

        # Delete a specific story highlight by its ID.
        sig do
          params(
            highlight_id: Integer,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Stories::HighlightDeleteResponse)
        end
        def delete(
          # The ID of the story highlight to retrieve
          highlight_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Add a specific story to a story highlight.
        sig do
          params(
            path_story_id: String,
            account: String,
            highlight_id: Integer,
            body_story_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Stories::HighlightAddStoryResponse)
        end
        def add_story(
          # Path param: The ID of the story.
          path_story_id,
          # Path param: The Account ID
          account:,
          # Path param: The ID of the story highlight to add the story to
          highlight_id:,
          # Body param: The ID of the story to add to the highlight
          body_story_id:,
          request_options: {}
        )
        end

        # Remove a specific story from a story highlight.
        sig do
          params(
            story_id: String,
            account: String,
            highlight_id: Integer,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Stories::HighlightRemoveStoryResponse)
        end
        def remove_story(
          # The ID of the story.
          story_id,
          # The Account ID
          account:,
          # The ID of the story highlight to add the story to
          highlight_id:,
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
