# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#retrieve_cohort_arps
    class SmartLinkRetrieveCohortArpsParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute smart_link_id
      #
      #   @return [String]
      required :smart_link_id, String

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
      #   @return [Symbol, Onlyfans::Models::SmartLinkRetrieveCohortArpsParams::RevenueBasis, nil]
      optional :revenue_basis, enum: -> { Onlyfans::SmartLinkRetrieveCohortArpsParams::RevenueBasis }

      # @!method initialize(smart_link_id:, acquisition_end: nil, acquisition_start: nil, revenue_basis: nil, request_options: {})
      #   @param smart_link_id [String]
      #
      #   @param acquisition_end [String] Optional acquisition range end date
      #
      #   @param acquisition_start [String] Optional acquisition range start date
      #
      #   @param revenue_basis [Symbol, Onlyfans::Models::SmartLinkRetrieveCohortArpsParams::RevenueBasis] Revenue basis. Defaults to `net`.
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
