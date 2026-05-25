# frozen_string_literal: true

module Onlyfans
  module Models
    module Stories
      # @see Onlyfans::Resources::Stories::Highlights#create
      class HighlightCreateParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute cover_story_id
        #   The ID of the story to use as the cover for the highlight
        #
        #   @return [Integer]
        required :cover_story_id, Integer, api_name: :coverStoryId

        # @!attribute story_ids
        #   An array of story IDs to include in the highlight
        #
        #   @return [Array<String>]
        required :story_ids, Onlyfans::Internal::Type::ArrayOf[String], api_name: :storyIds

        # @!attribute title
        #   The title of the story highlight
        #
        #   @return [String]
        required :title, String

        # @!method initialize(account:, cover_story_id:, story_ids:, title:, request_options: {})
        #   @param account [String]
        #
        #   @param cover_story_id [Integer] The ID of the story to use as the cover for the highlight
        #
        #   @param story_ids [Array<String>] An array of story IDs to include in the highlight
        #
        #   @param title [String] The title of the story highlight
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
