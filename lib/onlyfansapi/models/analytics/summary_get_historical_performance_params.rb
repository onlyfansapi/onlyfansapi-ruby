# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      # @see Onlyfansapi::Resources::Analytics::Summary#get_historical_performance
      class SummaryGetHistoricalPerformanceParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute time_range
        #   The time range for historical data
        #
        #   @return [Symbol, Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange, nil]
        optional :time_range,
                 enum: -> { Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange }

        # @!method initialize(time_range: nil, request_options: {})
        #   @param time_range [Symbol, Onlyfansapi::Models::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange] The time range for historical data
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

        # The time range for historical data
        module TimeRange
          extend Onlyfansapi::Internal::Type::Enum

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
