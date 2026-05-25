# frozen_string_literal: true

module Onlyfans
  module Models
    module SharedTrackingLinks
      # @see Onlyfans::Resources::SharedTrackingLinks::Tags#add
      class TagAddParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute shared_tracking_link_id
        #
        #   @return [Integer]
        required :shared_tracking_link_id, Integer

        # @!attribute tags
        #   Array of tag names to add to the shared tracking link.
        #
        #   @return [Array<String>]
        required :tags, Onlyfans::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, shared_tracking_link_id:, tags:, request_options: {})
        #   @param account [String]
        #
        #   @param shared_tracking_link_id [Integer]
        #
        #   @param tags [Array<String>] Array of tag names to add to the shared tracking link.
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
