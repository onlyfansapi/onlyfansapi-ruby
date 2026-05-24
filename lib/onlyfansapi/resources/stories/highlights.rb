# frozen_string_literal: true

module Onlyfansapi
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
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Stories::HighlightCreateResponse]
        #
        # @see Onlyfansapi::Models::Stories::HighlightCreateParams
        def create(account, params)
          parsed, options = Onlyfansapi::Stories::HighlightCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/stories/highlights", account],
            body: parsed,
            model: Onlyfansapi::Models::Stories::HighlightCreateResponse,
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
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Stories::HighlightRetrieveResponse]
        #
        # @see Onlyfansapi::Models::Stories::HighlightRetrieveParams
        def retrieve(highlight_id, params)
          parsed, options = Onlyfansapi::Stories::HighlightRetrieveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/stories/highlights/%2$s", account, highlight_id],
            model: Onlyfansapi::Models::Stories::HighlightRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfansapi::Models::Stories::HighlightUpdateParams} for more details.
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
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Stories::HighlightUpdateResponse]
        #
        # @see Onlyfansapi::Models::Stories::HighlightUpdateParams
        def update(highlight_id, params)
          parsed, options = Onlyfansapi::Stories::HighlightUpdateParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["api/%1$s/stories/highlights/%2$s", account, highlight_id],
            body: parsed,
            model: Onlyfansapi::Models::Stories::HighlightUpdateResponse,
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
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Stories::HighlightListResponse]
        #
        # @see Onlyfansapi::Models::Stories::HighlightListParams
        def list(account, params = {})
          parsed, options = Onlyfansapi::Stories::HighlightListParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/stories/highlights", account],
            query: query,
            model: Onlyfansapi::Models::Stories::HighlightListResponse,
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
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Stories::HighlightDeleteResponse]
        #
        # @see Onlyfansapi::Models::Stories::HighlightDeleteParams
        def delete(highlight_id, params)
          parsed, options = Onlyfansapi::Stories::HighlightDeleteParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["api/%1$s/stories/highlights/%2$s", account, highlight_id],
            model: Onlyfansapi::Models::Stories::HighlightDeleteResponse,
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
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Stories::HighlightAddStoryResponse]
        #
        # @see Onlyfansapi::Models::Stories::HighlightAddStoryParams
        def add_story(path_story_id, params)
          parsed, options = Onlyfansapi::Stories::HighlightAddStoryParams.dump_request(params)
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
            model: Onlyfansapi::Models::Stories::HighlightAddStoryResponse,
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
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Stories::HighlightRemoveStoryResponse]
        #
        # @see Onlyfansapi::Models::Stories::HighlightRemoveStoryParams
        def remove_story(story_id, params)
          parsed, options = Onlyfansapi::Stories::HighlightRemoveStoryParams.dump_request(params)
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
            model: Onlyfansapi::Models::Stories::HighlightRemoveStoryResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfansapi::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
