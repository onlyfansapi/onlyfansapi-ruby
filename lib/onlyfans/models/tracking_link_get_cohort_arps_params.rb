# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#get_cohort_arps
    class TrackingLinkGetCohortArpsParams < Onlyfans::Internal::Type::BaseModel
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

      # @!attribute acquisition_end
      #   Optional acquisition range end date
      #
      #   @return [String, nil]
      optional :acquisition_end, String

      # @!attribute acquisition_start
      #   Optional acquisition range start date
      #
      #   @return [String, nil]
      optional :acquisition_start, String

      # @!attribute revenue_basis
      #   Revenue basis. Defaults to `net`.
      #
      #   @return [Symbol, Onlyfans::Models::TrackingLinkGetCohortArpsParams::RevenueBasis, nil]
      optional :revenue_basis, enum: -> { Onlyfans::TrackingLinkGetCohortArpsParams::RevenueBasis }

      # @!method initialize(account:, tracking_link_id:, acquisition_end: nil, acquisition_start: nil, revenue_basis: nil, request_options: {})
      #   @param account [String]
      #
      #   @param tracking_link_id [String]
      #
      #   @param acquisition_end [String] Optional acquisition range end date
      #
      #   @param acquisition_start [String] Optional acquisition range start date
      #
      #   @param revenue_basis [Symbol, Onlyfans::Models::TrackingLinkGetCohortArpsParams::RevenueBasis] Revenue basis. Defaults to `net`.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Revenue basis. Defaults to `net`.
      module RevenueBasis
        extend Onlyfans::Internal::Type::Enum

        NET = :net
        GROSS = :gross

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
