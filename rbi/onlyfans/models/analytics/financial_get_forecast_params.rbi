# typed: strong

module Onlyfans
  module Models
    module Analytics
      class FinancialGetForecastParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Analytics::FinancialGetForecastParams,
              Onlyfans::Internal::AnyHash
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
            Onlyfans::Analytics::FinancialGetForecastParams::Metric::OrSymbol
          )
        end
        attr_accessor :metric

        # The forecasting model to use
        sig do
          returns(
            Onlyfans::Analytics::FinancialGetForecastParams::Model::OrSymbol
          )
        end
        attr_accessor :model

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
                Onlyfans::Analytics::FinancialGetForecastParams::Metric::OrSymbol,
              model:
                Onlyfans::Analytics::FinancialGetForecastParams::Model::OrSymbol,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The metric to forecast
        module Metric
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfans::Analytics::FinancialGetForecastParams::Metric
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REVENUE =
            T.let(
              :revenue,
              Onlyfans::Analytics::FinancialGetForecastParams::Metric::TaggedSymbol
            )
          CHURN_PERCENTAGE =
            T.let(
              :churn_percentage,
              Onlyfans::Analytics::FinancialGetForecastParams::Metric::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::Analytics::FinancialGetForecastParams::Metric::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The forecasting model to use
        module Model
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfans::Analytics::FinancialGetForecastParams::Model
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MOVING_AVERAGE =
            T.let(
              :moving_average,
              Onlyfans::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )
          LINEAR_REGRESSION =
            T.let(
              :linear_regression,
              Onlyfans::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )
          ARIMA =
            T.let(
              :arima,
              Onlyfans::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )
          SARIMA =
            T.let(
              :sarima,
              Onlyfans::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::Analytics::FinancialGetForecastParams::Model::TaggedSymbol
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
