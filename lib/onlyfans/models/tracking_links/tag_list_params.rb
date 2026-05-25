# frozen_string_literal: true

module Onlyfans
  module Models
    module TrackingLinks
      # @see Onlyfans::Resources::TrackingLinks::Tags#list
      class TagListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute tracking_link_id
        #
        #   @return [Integer]
        required :tracking_link_id, Integer

        # @!method initialize(account:, tracking_link_id:, request_options: {})
        #   @param account [String]
        #   @param tracking_link_id [Integer]
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
