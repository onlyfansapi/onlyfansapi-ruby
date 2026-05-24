# typed: strong

module Onlyfansapi
  module Resources
    class Analytics
      # APIs for retrieving financial analytics data
      class Financial
        # APIs for retrieving financial analytics data
        sig do
          returns(Onlyfansapi::Resources::Analytics::Financial::Transactions)
        end
        attr_reader :transactions

        # APIs for retrieving financial analytics data
        sig do
          returns(Onlyfansapi::Resources::Analytics::Financial::Profitability)
        end
        attr_reader :profitability

        # Generate revenue or churn forecasts using statistical models (Moving Average,
        # Linear Regression, ARIMA, SARIMA).
        sig do
          params(
            account_ids: T::Array[String],
            forecast_days: Integer,
            historical_days: Integer,
            metric:
              Onlyfansapi::Analytics::FinancialGetForecastParams::Metric::OrSymbol,
            model:
              Onlyfansapi::Analytics::FinancialGetForecastParams::Model::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(
            Onlyfansapi::Models::Analytics::FinancialGetForecastResponse
          )
        end
        def get_forecast(
          # Array of account prefixed IDs
          account_ids:,
          # Number of days to forecast (7-365)
          forecast_days:,
          # Number of historical days to analyze (30-730)
          historical_days:,
          # The metric to forecast
          metric:,
          # The forecasting model to use
          model:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
