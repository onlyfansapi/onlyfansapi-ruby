# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      class SummaryGetHistoricalPerformanceParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        # The time range for historical data
        sig do
          returns(
            T.nilable(
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol
            )
          )
        end
        attr_reader :time_range

        sig do
          params(
            time_range:
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol
          ).void
        end
        attr_writer :time_range

        sig do
          params(
            time_range:
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The time range for historical data
          time_range: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              time_range:
                Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol,
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The time range for historical data
        module TimeRange
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIME_RANGE_3M =
            T.let(
              :"3m",
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          TIME_RANGE_6M =
            T.let(
              :"6m",
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          TIME_RANGE_12M =
            T.let(
              :"12m",
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          YTD =
            T.let(
              :ytd,
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          LAST_YEAR =
            T.let(
              :"last-year",
              Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
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
