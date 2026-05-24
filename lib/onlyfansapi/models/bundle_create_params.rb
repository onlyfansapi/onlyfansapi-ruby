# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Bundles#create
    class BundleCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute discount
      #   The bundle's discount percentage.
      #
      #   @return [Integer, Onlyfansapi::Models::BundleCreateParams::Discount]
      required :discount, enum: -> { Onlyfansapi::BundleCreateParams::Discount }

      # @!attribute duration
      #   The bundle's duration in months.
      #
      #   @return [Integer, Onlyfansapi::Models::BundleCreateParams::Duration]
      required :duration, enum: -> { Onlyfansapi::BundleCreateParams::Duration }

      # @!method initialize(account:, discount:, duration:, request_options: {})
      #   @param account [String]
      #
      #   @param discount [Integer, Onlyfansapi::Models::BundleCreateParams::Discount] The bundle's discount percentage.
      #
      #   @param duration [Integer, Onlyfansapi::Models::BundleCreateParams::Duration] The bundle's duration in months.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # The bundle's discount percentage.
      module Discount
        extend Onlyfansapi::Internal::Type::Enum

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
        extend Onlyfansapi::Internal::Type::Enum

        DURATION_3 = 3
        DURATION_6 = 6
        DURATION_12 = 12

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
