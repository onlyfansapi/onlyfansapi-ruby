# frozen_string_literal: true

module Onlyfans
  module Resources
    class Stories
      # APIs for managing OnlyFans story highlights
      class Highlights
        # Create a new story highlight.
        #
        # @overload create(account, cover_story_id:, story_ids:, title:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param cover_story_id [Integer] The ID of the story to use as the cover for the highlight
        #
        # @param story_ids [Array<String>] An array of story IDs to include in the highlight
        #
        # @param title [String] The title of the story highlight
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Stories::HighlightCreateResponse]
        #
        # @see Onlyfans::Models::Stories::HighlightCreateParams
        def create(account, params)
          parsed, options = Onlyfans::Stories::HighlightCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/stories/highlights", account],
            body: parsed,
            model: Onlyfans::Models::Stories::HighlightCreateResponse,
            options: options
          )
        end

        # Retrieve details of a specific story highlight by its ID.
        #
        # @overload retrieve(highlight_id, account:, request_options: {})
        #
        # @param highlight_id [Integer] The ID of the story highlight to retrieve
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Stories::HighlightRetrieveResponse]
        #
        # @see Onlyfans::Models::Stories::HighlightRetrieveParams
        def retrieve(highlight_id, params)
          parsed, options = Onlyfans::Stories::HighlightRetrieveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/stories/highlights/%2$s", account, highlight_id],
            model: Onlyfans::Models::Stories::HighlightRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::Stories::HighlightUpdateParams} for more details.
        #
        # Update the details of a specific story highlight by its ID.
        #
        # @overload update(highlight_id, account:, cover_story_id:, story_ids:, title:, request_options: {})
        #
        # @param highlight_id [Integer] Path param: The ID of the story highlight to retrieve
        #
        # @param account [String] Path param: The Account ID
        #
        # @param cover_story_id [Integer] Body param: The ID of the story to use as the cover for the highlight. Provide t
        #
        # @param story_ids [Array<String>] Body param: An array of story IDs to include in the highlight. Provide the old v
        #
        # @param title [String] Body param: The new title for the story highlight. Provide the old value if you
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Stories::HighlightUpdateResponse]
        #
        # @see Onlyfans::Models::Stories::HighlightUpdateParams
        def update(highlight_id, params)
          parsed, options = Onlyfans::Stories::HighlightUpdateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["api/%1$s/stories/highlights/%2$s", account, highlight_id],
            body: parsed,
            model: Onlyfans::Models::Stories::HighlightUpdateResponse,
            options: options
          )
        end

        # Retrieve a list of your story highlights.
        #
        # @overload list(account, limit: nil, offset: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param limit [Integer] Number of highlights to return (default = 5)
        #
        # @param offset [Integer] Number of highlights to skip for pagination
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Stories::HighlightListResponse]
        #
        # @see Onlyfans::Models::Stories::HighlightListParams
        def list(account, params = {})
          parsed, options = Onlyfans::Stories::HighlightListParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/stories/highlights", account],
            query: query,
            model: Onlyfans::Models::Stories::HighlightListResponse,
            options: options
          )
        end

        # Delete a specific story highlight by its ID.
        #
        # @overload delete(highlight_id, account:, request_options: {})
        #
        # @param highlight_id [Integer] The ID of the story highlight to retrieve
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Stories::HighlightDeleteResponse]
        #
        # @see Onlyfans::Models::Stories::HighlightDeleteParams
        def delete(highlight_id, params)
          parsed, options = Onlyfans::Stories::HighlightDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/stories/highlights/%2$s", account, highlight_id],
            model: Onlyfans::Models::Stories::HighlightDeleteResponse,
            options: options
          )
        end

        # Add a specific story to a story highlight.
        #
        # @overload add_story(path_story_id, account:, highlight_id:, body_story_id:, request_options: {})
        #
        # @param path_story_id [String] Path param: The ID of the story.
        #
        # @param account [String] Path param: The Account ID
        #
        # @param highlight_id [Integer] Path param: The ID of the story highlight to add the story to
        #
        # @param body_story_id [Integer] Body param: The ID of the story to add to the highlight
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Stories::HighlightAddStoryResponse]
        #
        # @see Onlyfans::Models::Stories::HighlightAddStoryParams
        def add_story(path_story_id, params)
          parsed, options = Onlyfans::Stories::HighlightAddStoryParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          highlight_id =
            parsed.delete(:highlight_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["api/%1$s/stories/highlights/%2$s/%3$s", account, highlight_id, path_story_id],
            body: parsed,
            model: Onlyfans::Models::Stories::HighlightAddStoryResponse,
            options: options
          )
        end

        # Remove a specific story from a story highlight.
        #
        # @overload remove_story(story_id, account:, highlight_id:, request_options: {})
        #
        # @param story_id [String] The ID of the story.
        #
        # @param account [String] The Account ID
        #
        # @param highlight_id [Integer] The ID of the story highlight to add the story to
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Stories::HighlightRemoveStoryResponse]
        #
        # @see Onlyfans::Models::Stories::HighlightRemoveStoryParams
        def remove_story(story_id, params)
          parsed, options = Onlyfans::Stories::HighlightRemoveStoryParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          highlight_id =
            parsed.delete(:highlight_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/stories/highlights/%2$s/%3$s", account, highlight_id, story_id],
            model: Onlyfans::Models::Stories::HighlightRemoveStoryResponse,
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
