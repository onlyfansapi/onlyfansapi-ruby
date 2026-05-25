# typed: strong

module Onlyfans
  module Models
    module Analytics
      class SummaryGetHistoricalPerformanceParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams,
              Onlyfans::Internal::AnyHash
            )
          end

        # The time range for historical data
        sig do
          returns(
            T.nilable(
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol
            )
          )
        end
        attr_reader :time_range

        sig do
          params(
            time_range:
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol
          ).void
        end
        attr_writer :time_range

        sig do
          params(
            time_range:
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
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
                Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::OrSymbol,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The time range for historical data
        module TimeRange
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TIME_RANGE_3M =
            T.let(
              :"3m",
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          TIME_RANGE_6M =
            T.let(
              :"6m",
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          TIME_RANGE_12M =
            T.let(
              :"12m",
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          YTD =
            T.let(
              :ytd,
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )
          LAST_YEAR =
            T.let(
              :"last-year",
              Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::Analytics::SummaryGetHistoricalPerformanceParams::TimeRange::TaggedSymbol
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
