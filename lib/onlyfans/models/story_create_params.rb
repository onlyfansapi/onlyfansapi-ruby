# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stories#create
    class StoryCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute media_files
      #   Array of media file upload prefixed_ids, or OF media IDs (required if price is
      #   not 0).
      #
      #   @return [Array<String>]
      required :media_files, Onlyfans::Internal::Type::ArrayOf[String], api_name: :mediaFiles

      # @!method initialize(account:, media_files:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::StoryCreateParams} for more details.
      #
      #   @param account [String]
      #
      #   @param media_files [Array<String>] Array of media file upload prefixed_ids, or OF media IDs (required if price is n
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
