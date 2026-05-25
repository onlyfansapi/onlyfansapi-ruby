# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      # @see Onlyfans::Resources::Analytics::Financial#get_forecast
      class FinancialGetForecastResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute forecast
        #
        #   @return [Array<Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast>, nil]
        optional :forecast,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast] }

        # @!attribute historical
        #
        #   @return [Array<Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical>, nil]
        optional :historical,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical] }

        # @!attribute metric
        #
        #   @return [String, nil]
        optional :metric, String

        # @!attribute model
        #
        #   @return [String, nil]
        optional :model, String

        # @!method initialize(forecast: nil, historical: nil, metric: nil, model: nil)
        #   @param forecast [Array<Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast>]
        #   @param historical [Array<Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical>]
        #   @param metric [String]
        #   @param model [String]

        class Forecast < Onlyfans::Internal::Type::BaseModel
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

        class Historical < Onlyfans::Internal::Type::BaseModel
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
