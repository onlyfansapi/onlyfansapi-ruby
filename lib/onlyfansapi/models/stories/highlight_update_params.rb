# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Stories
      # @see Onlyfansapi::Resources::Stories::Highlights#update
      class HighlightUpdateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute highlight_id
        #
        #   @return [Integer]
        required :highlight_id, Integer

        # @!attribute cover_story_id
        #   The ID of the story to use as the cover for the highlight. Provide the old value
        #   if you don't want to change it.
        #
        #   @return [Integer]
        required :cover_story_id, Integer, api_name: :coverStoryId

        # @!attribute story_ids
        #   An array of story IDs to include in the highlight. Provide the old value if you
        #   don't want to change it.
        #
        #   @return [Array<String>]
        required :story_ids, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :storyIds

        # @!attribute title
        #   The new title for the story highlight. Provide the old value if you don't want
        #   to change it.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(account:, highlight_id:, cover_story_id:, story_ids:, title:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Stories::HighlightUpdateParams} for more details.
        #
        #   @param account [String]
        #
        #   @param highlight_id [Integer]
        #
        #   @param cover_story_id [Integer] The ID of the story to use as the cover for the highlight. Provide the old value
        #
        #   @param story_ids [Array<String>] An array of story IDs to include in the highlight. Provide the old value if you
        #
        #   @param title [String] The new title for the story highlight. Provide the old value if you don't want t
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
