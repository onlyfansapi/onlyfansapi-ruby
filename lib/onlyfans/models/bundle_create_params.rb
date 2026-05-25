# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Bundles#create
    class BundleCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute discount
      #   The bundle's discount percentage.
      #
      #   @return [Integer, Onlyfans::Models::BundleCreateParams::Discount]
      required :discount, enum: -> { Onlyfans::BundleCreateParams::Discount }

      # @!attribute duration
      #   The bundle's duration in months.
      #
      #   @return [Integer, Onlyfans::Models::BundleCreateParams::Duration]
      required :duration, enum: -> { Onlyfans::BundleCreateParams::Duration }

      # @!method initialize(account:, discount:, duration:, request_options: {})
      #   @param account [String]
      #
      #   @param discount [Integer, Onlyfans::Models::BundleCreateParams::Discount] The bundle's discount percentage.
      #
      #   @param duration [Integer, Onlyfans::Models::BundleCreateParams::Duration] The bundle's duration in months.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # The bundle's discount percentage.
      module Discount
        extend Onlyfans::Internal::Type::Enum

        DISCOUNT_0 = 0
        DISCOUNT_5 = 5
        DISCOUNT_10 = 10
        DISCOUNT_15 = 15
        DISCOUNT_20 = 20
        DISCOUNT_25 = 25
        DISCOUNT_30 = 30
        DISCOUNT_35 = 35
        DISCOUNT_40 = 40
        DISCOUNT_45 = 45
        DISCOUNT_50 = 50

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # The bundle's duration in months.
      module Duration
        extend Onlyfans::Internal::Type::Enum

        DURATION_3 = 3
        DURATION_6 = 6
        DURATION_12 = 12

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
