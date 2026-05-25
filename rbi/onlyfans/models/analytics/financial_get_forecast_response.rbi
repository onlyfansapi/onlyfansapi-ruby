# typed: strong

module Onlyfans
  module Models
    module Analytics
      class FinancialGetForecastResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Analytics::FinancialGetForecastResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast
              ]
            )
          )
        end
        attr_reader :forecast

        sig do
          params(
            forecast:
              T::Array[
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast::OrHash
              ]
          ).void
        end
        attr_writer :forecast

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical
              ]
            )
          )
        end
        attr_reader :historical

        sig do
          params(
            historical:
              T::Array[
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical::OrHash
              ]
          ).void
        end
        attr_writer :historical

        sig { returns(T.nilable(String)) }
        attr_reader :metric

        sig { params(metric: String).void }
        attr_writer :metric

        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        sig do
          params(
            forecast:
              T::Array[
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast::OrHash
              ],
            historical:
              T::Array[
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical::OrHash
              ],
            metric: String,
            model: String
          ).returns(T.attached_class)
        end
        def self.new(forecast: nil, historical: nil, metric: nil, model: nil)
        end

        sig do
          override.returns(
            {
              forecast:
                T::Array[
                  Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast
                ],
              historical:
                T::Array[
                  Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical
                ],
              metric: String,
              model: String
            }
          )
        end
        def to_hash
        end

        class Forecast < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Forecast,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :date

          sig { params(date: String).void }
          attr_writer :date

          sig { returns(T.nilable(Float)) }
          attr_reader :value

          sig { params(value: Float).void }
          attr_writer :value

          sig { params(date: String, value: Float).returns(T.attached_class) }
          def self.new(date: nil, value: nil)
          end

          sig { override.returns({ date: String, value: Float }) }
          def to_hash
          end
        end

        class Historical < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Analytics::FinancialGetForecastResponse::Historical,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :date

          sig { params(date: String).void }
          attr_writer :date

          sig { returns(T.nilable(Float)) }
          attr_reader :value

          sig { params(value: Float).void }
          attr_writer :value

          sig { params(date: String, value: Float).returns(T.attached_class) }
          def self.new(date: nil, value: nil)
          end

          sig { override.returns({ date: String, value: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
