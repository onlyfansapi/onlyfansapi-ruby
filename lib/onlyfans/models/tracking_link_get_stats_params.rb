# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#get_stats
    class TrackingLinkGetStatsParams < Onlyfans::Internal::Type::BaseModel
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

      # @!attribute date_end
      #   Optional stats range end date
      #
      #   @return [String, nil]
      optional :date_end, String

      # @!attribute date_start
      #   Optional stats range start date
      #
      #   @return [String, nil]
      optional :date_start, String

      # @!method initialize(account:, tracking_link_id:, date_end: nil, date_start: nil, request_options: {})
      #   @param account [String]
      #
      #   @param tracking_link_id [String]
      #
      #   @param date_end [String] Optional stats range end date
      #
      #   @param date_start [String] Optional stats range start date
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
