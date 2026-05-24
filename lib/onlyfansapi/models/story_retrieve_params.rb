# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stories#retrieve
    class StoryRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

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
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
