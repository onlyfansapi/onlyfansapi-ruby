# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      class SummaryGetHistoricalPerformanceResponseItem < Onlyfans::Internal::Type::BaseModel
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

      # @type [Onlyfans::Internal::Type::Converter]
      SummaryGetHistoricalPerformanceResponse =
        Onlyfans::Internal::Type::ArrayOf[-> { Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceResponseItem }]
    end
  end
end
