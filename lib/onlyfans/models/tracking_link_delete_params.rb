# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#delete
    class TrackingLinkDeleteParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute tracking_link_id
      #
      #   @return [String]
      required :tracking_link_id, String

      # @!method initialize(account:, tracking_link_id:, request_options: {})
      #   @param account [String]
      #   @param tracking_link_id [String]
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
