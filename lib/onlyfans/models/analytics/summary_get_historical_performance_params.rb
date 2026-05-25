# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      # @see Onlyfans::Resources::Analytics::Summary#get_historical_performance
      class SummaryGetHistoricalPerformanceParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute time_range
        #   The time range for historical data
        #
        #   @return [Symbol, Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange, nil]
        optional :time_range, enum: -> { Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange }

        # @!method initialize(time_range: nil, request_options: {})
        #   @param time_range [Symbol, Onlyfans::Models::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange] The time range for historical data
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

        # The time range for historical data
        module TimeRange
          extend Onlyfans::Internal::Type::Enum

          TIME_RANGE_3M = :"3m"
          TIME_RANGE_6M = :"6m"
          TIME_RANGE_12M = :"12m"
          YTD = :ytd
          LAST_YEAR = :"last-year"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
