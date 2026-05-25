# frozen_string_literal: true

module Onlyfans
  module Models
    module Stories
      # @see Onlyfans::Resources::Stories::Highlights#add_story
      class HighlightAddStoryParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute highlight_id
        #
        #   @return [Integer]
        required :highlight_id, Integer

        # @!attribute path_story_id
        #
        #   @return [String]
        required :path_story_id, String

        # @!attribute body_story_id
        #   The ID of the story to add to the highlight
        #
        #   @return [Integer]
        required :body_story_id, Integer, api_name: :story_id

        # @!method initialize(account:, highlight_id:, path_story_id:, body_story_id:, request_options: {})
        #   @param account [String]
        #
        #   @param highlight_id [Integer]
        #
        #   @param path_story_id [String]
        #
        #   @param body_story_id [Integer] The ID of the story to add to the highlight
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
