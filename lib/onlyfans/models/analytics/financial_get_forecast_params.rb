# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      # @see Onlyfans::Resources::Analytics::Financial#get_forecast
      class FinancialGetForecastParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account_ids
        #   Array of account prefixed IDs
        #
        #   @return [Array<String>]
        required :account_ids, Onlyfans::Internal::Type::ArrayOf[String]

        # @!attribute forecast_days
        #   Number of days to forecast (7-365)
        #
        #   @return [Integer]
        required :forecast_days, Integer

        # @!attribute historical_days
        #   Number of historical days to analyze (30-730)
        #
        #   @return [Integer]
        required :historical_days, Integer

        # @!attribute metric
        #   The metric to forecast
        #
        #   @return [Symbol, Onlyfans::Models::Analytics::FinancialGetForecastParams::Metric]
        required :metric, enum: -> { Onlyfans::Analytics::FinancialGetForecastParams::Metric }

        # @!attribute model
        #   The forecasting model to use
        #
        #   @return [Symbol, Onlyfans::Models::Analytics::FinancialGetForecastParams::Model]
        required :model, enum: -> { Onlyfans::Analytics::FinancialGetForecastParams::Model }

        # @!method initialize(account_ids:, forecast_days:, historical_days:, metric:, model:, request_options: {})
        #   @param account_ids [Array<String>] Array of account prefixed IDs
        #
        #   @param forecast_days [Integer] Number of days to forecast (7-365)
        #
        #   @param historical_days [Integer] Number of historical days to analyze (30-730)
        #
        #   @param metric [Symbol, Onlyfans::Models::Analytics::FinancialGetForecastParams::Metric] The metric to forecast
        #
        #   @param model [Symbol, Onlyfans::Models::Analytics::FinancialGetForecastParams::Model] The forecasting model to use
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

        # The metric to forecast
        module Metric
          extend Onlyfans::Internal::Type::Enum

          REVENUE = :revenue
          CHURN_PERCENTAGE = :churn_percentage

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The forecasting model to use
        module Model
          extend Onlyfans::Internal::Type::Enum

          MOVING_AVERAGE = :moving_average
          LINEAR_REGRESSION = :linear_regression
          ARIMA = :arima
          SARIMA = :sarima

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
