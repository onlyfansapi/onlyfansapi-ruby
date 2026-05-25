# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing OnlyFans stories
    class Stories
      # APIs for managing OnlyFans story highlights
      # @return [Onlyfans::Resources::Stories::Highlights]
      attr_reader :highlights

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::StoryCreateParams} for more details.
      #
      # Post a new media or vault file to your story.
      #
      # @overload create(account, media_files:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param media_files [Array<String>] Array of media file upload prefixed_ids, or OF media IDs (required if price is n
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryCreateResponse]
      #
      # @see Onlyfans::Models::StoryCreateParams
      def create(account, params)
        parsed, options = Onlyfans::StoryCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/stories", account],
          body: parsed,
          model: Onlyfans::Models::StoryCreateResponse,
          options: options
        )
      end

      # Retrieve details of a specific story by its ID.
      #
      # @overload retrieve(story_id, account:, request_options: {})
      #
      # @param story_id [Integer] The ID of the story to retrieve
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryRetrieveResponse]
      #
      # @see Onlyfans::Models::StoryRetrieveParams
      def retrieve(story_id, params)
        parsed, options = Onlyfans::StoryRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/%2$s", account, story_id],
          model: Onlyfans::Models::StoryRetrieveResponse,
          options: options
        )
      end

      # Delete a specific story by its ID.
      #
      # @overload delete(story_id, account:, request_options: {})
      #
      # @param story_id [Integer] The ID of the story to retrieve
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryDeleteResponse]
      #
      # @see Onlyfans::Models::StoryDeleteParams
      def delete(story_id, params)
        parsed, options = Onlyfans::StoryDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/stories/%2$s", account, story_id],
          model: Onlyfans::Models::StoryDeleteResponse,
          options: options
        )
      end

      # Retrieve a list of your currently active stories.
      #
      # @overload list_active(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryListActiveResponse]
      #
      # @see Onlyfans::Models::StoryListActiveParams
      def list_active(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/stories", account],
          model: Onlyfans::Models::StoryListActiveResponse,
          options: params[:request_options]
        )
      end

      # Retrieve a list of your archived stories.
      #
      # @overload list_archive(account, limit: nil, marker: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [Integer] Number of stories to return (default = 18)
      #
      # @param marker [String] The marker used for pagination. Default: `null`
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryListArchiveResponse]
      #
      # @see Onlyfans::Models::StoryListArchiveParams
      def list_archive(account, params = {})
        parsed, options = Onlyfans::StoryListArchiveParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/archive", account],
          query: query,
          model: Onlyfans::Models::StoryListArchiveResponse,
          options: options
        )
      end

      # Retrieve the list of viewers for a specific story by its ID.
      #
      # @overload list_viewers(story_id, account:, limit: nil, offset: nil, request_options: {})
      #
      # @param story_id [Integer] Path param: The ID of the story to get viewers for
      #
      # @param account [String] Path param: The Account ID
      #
      # @param limit [Integer, nil] Query param: The number of story viewers to return. Default `8`
      #
      # @param offset [Integer, nil] Query param: The offset used for pagination. Default `0`
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryListViewersResponse]
      #
      # @see Onlyfans::Models::StoryListViewersParams
      def list_viewers(story_id, params)
        parsed, options = Onlyfans::StoryListViewersParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/%2$s/viewers", account, story_id],
          query: query,
          model: Onlyfans::Models::StoryListViewersResponse,
          options: options
        )
      end

      # Mark a specific story as watched by its ID.
      #
      # @overload mark_as_watched(story_id, account:, request_options: {})
      #
      # @param story_id [Integer] The ID of the story to mark as watched.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryMarkAsWatchedResponse]
      #
      # @see Onlyfans::Models::StoryMarkAsWatchedParams
      def mark_as_watched(story_id, params)
        parsed, options = Onlyfans::StoryMarkAsWatchedParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/stories/%2$s/mark-as-watched", account, story_id],
          model: Onlyfans::Models::StoryMarkAsWatchedResponse,
          options: options
        )
      end

      # Retrieve viewer count, likes count, comments count, and tips statistics for a
      # specific story by its ID.
      #
      # @overload retrieve_stats(story_id, account:, request_options: {})
      #
      # @param story_id [Integer] The ID of the story to get stats for
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::StoryRetrieveStatsResponse]
      #
      # @see Onlyfans::Models::StoryRetrieveStatsParams
      def retrieve_stats(story_id, params)
        parsed, options = Onlyfans::StoryRetrieveStatsParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/%2$s/stats", account, story_id],
          model: Onlyfans::Models::StoryRetrieveStatsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @highlights = Onlyfans::Resources::Stories::Highlights.new(client: client)
      end
    end
  end
end
