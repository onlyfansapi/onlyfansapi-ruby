# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      class SummaryGetHistoricalPerformanceResponseItem < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute period
        #
        #   @return [String, nil]
        optional :period, String

        # @!attribute value
        #
        #   @return [Float, nil]
        optional :value, Float

        # @!method initialize(period: nil, value: nil)
        #   @param period [String]
        #   @param value [Float]
      end

      # @type [Onlyfansapi::Internal::Type::Converter]
      SummaryGetHistoricalPerformanceResponse =
        Onlyfansapi::Internal::Type::ArrayOf[-> { Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem }]
    end
  end
end
