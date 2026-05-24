# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Analytics
      # APIs for retrieving financial analytics data
      class Financial
        # APIs for retrieving financial analytics data
        # @return [Onlyfansapi::Resources::Analytics::Financial::Transactions]
        attr_reader :transactions

        # APIs for retrieving financial analytics data
        # @return [Onlyfansapi::Resources::Analytics::Financial::Profitability]
        attr_reader :profitability

        # Generate revenue or churn forecasts using statistical models (Moving Average,
        # Linear Regression, ARIMA, SARIMA).
        #
        # @overload get_forecast(account_ids:, forecast_days:, historical_days:, metric:, model:, request_options: {})
        #
        # @param account_ids [Array<String>] Array of account prefixed IDs
        #
        # @param forecast_days [Integer] Number of days to forecast (7-365)
        #
        # @param historical_days [Integer] Number of historical days to analyze (30-730)
        #
        # @param metric [Symbol, Onlyfansapi::Models::Analytics::FinancialGetForecastParams::Metric] The metric to forecast
        #
        # @param model [Symbol, Onlyfansapi::Models::Analytics::FinancialGetForecastParams::Model] The forecasting model to use
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Analytics::FinancialGetForecastResponse]
        #
        # @see Onlyfansapi::Models::Analytics::FinancialGetForecastParams
        def get_forecast(params)
          parsed, options = Onlyfansapi::Analytics::FinancialGetForecastParams.dump_request(params)
          @client.request(
            method: :post,
            path: "api/analytics/financial/forecast",
            body: parsed,
            model: Onlyfansapi::Models::Analytics::FinancialGetForecastResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfansapi::Client]
        def initialize(client:)
          @client = client
          @transactions = Onlyfansapi::Resources::Analytics::Financial::Transactions.new(client: client)
          @profitability = Onlyfansapi::Resources::Analytics::Financial::Profitability.new(client: client)
        end
      end
    end
  end
end
