# frozen_string_literal: true

module Onlyfans
  module Models
    module Stories
      # @see Onlyfans::Resources::Stories::Highlights#remove_story
      class HighlightRemoveStoryParams < Onlyfans::Internal::Type::BaseModel
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

        # @!attribute story_id
        #
        #   @return [String]
        required :story_id, String

        # @!method initialize(account:, highlight_id:, story_id:, request_options: {})
        #   @param account [String]
        #   @param highlight_id [Integer]
        #   @param story_id [String]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
