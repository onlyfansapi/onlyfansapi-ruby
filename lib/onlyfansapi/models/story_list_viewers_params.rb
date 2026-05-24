# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stories#list_viewers
    class StoryListViewersParams < Onlyfansapi::Internal::Type::BaseModel
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

      # @!attribute limit
      #   The number of story viewers to return. Default `8`
      #
      #   @return [Integer, nil]
      optional :limit, Integer, nil?: true

      # @!attribute offset
      #   The offset used for pagination. Default `0`
      #
      #   @return [Integer, nil]
      optional :offset, Integer, nil?: true

      # @!method initialize(account:, story_id:, limit: nil, offset: nil, request_options: {})
      #   @param account [String]
      #
      #   @param story_id [Integer]
      #
      #   @param limit [Integer, nil] The number of story viewers to return. Default `8`
      #
      #   @param offset [Integer, nil] The offset used for pagination. Default `0`
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
