# typed: strong

module Onlyfans
  module Resources
    class Analytics
      # APIs for retrieving financial analytics data
      class Financial
        # APIs for retrieving financial analytics data
        sig { returns(Onlyfans::Resources::Analytics::Financial::Transactions) }
        attr_reader :transactions

        # APIs for retrieving financial analytics data
        sig do
          returns(Onlyfans::Resources::Analytics::Financial::Profitability)
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
              Onlyfans::Analytics::FinancialGetForecastParams::Metric::OrSymbol,
            model:
              Onlyfans::Analytics::FinancialGetForecastParams::Model::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::Analytics::FinancialGetForecastResponse)
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
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
