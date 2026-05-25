# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stories#mark_as_watched
    class StoryMarkAsWatchedParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute story_id
      #
      #   @return [Integer]
      required :story_id, Integer

      # @!method initialize(account:, story_id:, request_options: {})
      #   @param account [String]
      #   @param story_id [Integer]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
