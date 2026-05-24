# frozen_string_literal: true

module Onlyfansapi
  module Models
    module SharedTrackingLinks
      # @see Onlyfansapi::Resources::SharedTrackingLinks::Tags#remove
      class TagRemoveParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute shared_tracking_link_id
        #
        #   @return [Integer]
        required :shared_tracking_link_id, Integer

        # @!attribute tags
        #   Array of tag names to remove from the shared tracking link.
        #
        #   @return [Array<String>]
        required :tags, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!method initialize(account:, shared_tracking_link_id:, tags:, request_options: {})
        #   @param account [String]
        #
        #   @param shared_tracking_link_id [Integer]
        #
        #   @param tags [Array<String>] Array of tag names to remove from the shared tracking link.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
