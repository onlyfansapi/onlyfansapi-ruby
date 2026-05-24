# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      class FinancialGetForecastParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Analytics::FinancialGetForecastParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        # Array of account prefixed IDs
        sig { returns(T::Array[String]) }
        attr_accessor :account_ids

        # Number of days to forecast (7-365)
        sig { returns(Integer) }
        attr_accessor :forecast_days

        # Number of historical days to analyze (30-730)
        sig { returns(Integer) }
        attr_accessor :historical_days

        # The metric to forecast
        sig do
          returns(
            Onlyfansapi::Analytics::FinancialGetForecastParams::Metric::OrSymbol
          )
        end
        attr_accessor :metric

        # The forecasting model to use
        sig do
          returns(
            Onlyfansapi::Analytics::FinancialGetForecastParams::Model::OrSymbol
          )
        end
        attr_accessor :model

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
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
              account_ids: T::Array[String],
              forecast_days: Integer,
              historical_days: Integer,
              metric:
                Onlyfansapi::Analytics::FinancialGetForecastParams::Metric::OrSymbol,
              model:
                Onlyfansapi::Analytics::FinancialGetForecastParams::Model::OrSymbol,
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The metric to forecast
        module Metric
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Analytics::FinancialGetForecastParams::Metric
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REVENUE =
            T.let(
              :revenue,
              Onlyfansapi::Analytics::FinancialGetForecastParams::Metric::TaggedSymbol
            )
          CHURN_PERCENTAGE =
            T.let(
              :churn_percentage,
              Onlyfansapi::Analytics::FinancialGetForecastParams::Metric::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Analytics::FinancialGetForecastParams::Metric::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The forecasting model to use
        module Model
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Analytics::FinancialGetForecastParams::Model
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MOVING_AVERAGE =
            T.let(
              :moving_average,
              Onlyfansapi::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )
          LINEAR_REGRESSION =
            T.let(
              :linear_regression,
              Onlyfansapi::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )
          ARIMA =
            T.let(
              :arima,
              Onlyfansapi::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )
          SARIMA =
            T.let(
              :sarima,
              Onlyfansapi::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
