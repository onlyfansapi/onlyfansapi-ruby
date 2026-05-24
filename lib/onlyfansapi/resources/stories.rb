# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans stories
    class Stories
      # APIs for managing OnlyFans story highlights
      # @return [Onlyfansapi::Resources::Stories::Highlights]
      attr_reader :highlights

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::StoryCreateParams} for more details.
      #
      # Post a new media or vault file to your story.
      #
      # @overload create(account, media_files:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param media_files [Array<String>] Array of media file upload prefixed_ids, or OF media IDs (required if price is n
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryCreateResponse]
      #
      # @see Onlyfansapi::Models::StoryCreateParams
      def create(account, params)
        parsed, options = Onlyfansapi::StoryCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/stories", account],
          body: parsed,
          model: Onlyfansapi::Models::StoryCreateResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryRetrieveResponse]
      #
      # @see Onlyfansapi::Models::StoryRetrieveParams
      def retrieve(story_id, params)
        parsed, options = Onlyfansapi::StoryRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/%2$s", account, story_id],
          model: Onlyfansapi::Models::StoryRetrieveResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryDeleteResponse]
      #
      # @see Onlyfansapi::Models::StoryDeleteParams
      def delete(story_id, params)
        parsed, options = Onlyfansapi::StoryDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/stories/%2$s", account, story_id],
          model: Onlyfansapi::Models::StoryDeleteResponse,
          options: options
        )
      end

      # Retrieve a list of your currently active stories.
      #
      # @overload list_active(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryListActiveResponse]
      #
      # @see Onlyfansapi::Models::StoryListActiveParams
      def list_active(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/stories", account],
          model: Onlyfansapi::Models::StoryListActiveResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryListArchiveResponse]
      #
      # @see Onlyfansapi::Models::StoryListArchiveParams
      def list_archive(account, params = {})
        parsed, options = Onlyfansapi::StoryListArchiveParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/archive", account],
          query: query,
          model: Onlyfansapi::Models::StoryListArchiveResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryListViewersResponse]
      #
      # @see Onlyfansapi::Models::StoryListViewersParams
      def list_viewers(story_id, params)
        parsed, options = Onlyfansapi::StoryListViewersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/%2$s/viewers", account, story_id],
          query: query,
          model: Onlyfansapi::Models::StoryListViewersResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryMarkAsWatchedResponse]
      #
      # @see Onlyfansapi::Models::StoryMarkAsWatchedParams
      def mark_as_watched(story_id, params)
        parsed, options = Onlyfansapi::StoryMarkAsWatchedParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["api/%1$s/stories/%2$s/mark-as-watched", account, story_id],
          model: Onlyfansapi::Models::StoryMarkAsWatchedResponse,
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
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::StoryRetrieveStatsResponse]
      #
      # @see Onlyfansapi::Models::StoryRetrieveStatsParams
      def retrieve_stats(story_id, params)
        parsed, options = Onlyfansapi::StoryRetrieveStatsParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/stories/%2$s/stats", account, story_id],
          model: Onlyfansapi::Models::StoryRetrieveStatsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @highlights = Onlyfansapi::Resources::Stories::Highlights.new(client: client)
      end
    end
  end
end
