# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      # @see Onlyfansapi::Resources::Analytics::Financial#get_forecast
      class FinancialGetForecastResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute forecast
        #
        #   @return [Array<Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Forecast>, nil]
        optional :forecast,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Forecast] }

        # @!attribute historical
        #
        #   @return [Array<Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Historical>, nil]
        optional :historical,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Historical] }

        # @!attribute metric
        #
        #   @return [String, nil]
        optional :metric, String

        # @!attribute model
        #
        #   @return [String, nil]
        optional :model, String

        # @!method initialize(forecast: nil, historical: nil, metric: nil, model: nil)
        #   @param forecast [Array<Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Forecast>]
        #   @param historical [Array<Onlyfansapi::Models::Analytics::FinancialGetForecastResponse::Historical>]
        #   @param metric [String]
        #   @param model [String]

        class Forecast < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute date
          #
          #   @return [String, nil]
          optional :date, String

          # @!attribute value
          #
          #   @return [Float, nil]
          optional :value, Float

          # @!method initialize(date: nil, value: nil)
          #   @param date [String]
          #   @param value [Float]
        end

        class Historical < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute date
          #
          #   @return [String, nil]
          optional :date, String

          # @!attribute value
          #
          #   @return [Float, nil]
          optional :value, Float

          # @!method initialize(date: nil, value: nil)
          #   @param date [String]
          #   @param value [Float]
        end
      end
    end
  end
end
