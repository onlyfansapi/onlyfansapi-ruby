# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Stories
      # @see Onlyfansapi::Resources::Stories::Highlights#remove_story
      class HighlightRemoveStoryParams < Onlyfansapi::Internal::Type::BaseModel
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

        # @!attribute story_id
        #
        #   @return [String]
        required :story_id, String

        # @!method initialize(account:, highlight_id:, story_id:, request_options: {})
        #   @param account [String]
        #   @param highlight_id [Integer]
        #   @param story_id [String]
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
