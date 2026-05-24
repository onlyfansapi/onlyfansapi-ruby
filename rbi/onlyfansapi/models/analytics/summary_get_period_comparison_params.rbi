# typed: strong

module Onlyfansapi
  module Models
    module Analytics
      class SummaryGetPeriodComparisonParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        # Array of account prefixed IDs to compare
        sig { returns(T::Array[String]) }
        attr_accessor :account_ids

        # First period to compare
        sig do
          returns(
            Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodA
          )
        end
        attr_reader :period_a

        sig do
          params(
            period_a:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodA::OrHash
          ).void
        end
        attr_writer :period_a

        # Second period to compare
        sig do
          returns(
            Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodB
          )
        end
        attr_reader :period_b

        sig do
          params(
            period_b:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodB::OrHash
          ).void
        end
        attr_writer :period_b

        # Comparison granularity
        sig do
          returns(
            T.nilable(
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol
            )
          )
        end
        attr_reader :granularity

        sig do
          params(
            granularity:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol
          ).void
        end
        attr_writer :granularity

        # The statistic type to compare
        sig do
          returns(
            T.nilable(
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol
            )
          )
        end
        attr_reader :stat_type

        sig do
          params(
            stat_type:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol
          ).void
        end
        attr_writer :stat_type

        sig do
          params(
            account_ids: T::Array[String],
            period_a:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodA::OrHash,
            period_b:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodB::OrHash,
            granularity:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol,
            stat_type:
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of account prefixed IDs to compare
          account_ids:,
          # First period to compare
          period_a:,
          # Second period to compare
          period_b:,
          # Comparison granularity
          granularity: nil,
          # The statistic type to compare
          stat_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_ids: T::Array[String],
              period_a:
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodA,
              period_b:
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodB,
              granularity:
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol,
              stat_type:
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol,
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        class PeriodA < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodA,
                Onlyfansapi::Internal::AnyHash
              )
            end

          # Must be a valid date. Must be a date after or equal to
          # <code>period_a.start</code>.
          sig { returns(String) }
          attr_accessor :end_

          # Must be a valid date.
          sig { returns(String) }
          attr_accessor :start

          # First period to compare
          sig { params(end_: String, start: String).returns(T.attached_class) }
          def self.new(
            # Must be a valid date. Must be a date after or equal to
            # <code>period_a.start</code>.
            end_:,
            # Must be a valid date.
            start:
          )
          end

          sig { override.returns({ end_: String, start: String }) }
          def to_hash
          end
        end

        class PeriodB < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::PeriodB,
                Onlyfansapi::Internal::AnyHash
              )
            end

          # Must be a valid date. Must be a date after or equal to
          # <code>period_b.start</code>.
          sig { returns(String) }
          attr_accessor :end_

          # Must be a valid date.
          sig { returns(String) }
          attr_accessor :start

          # Second period to compare
          sig { params(end_: String, start: String).returns(T.attached_class) }
          def self.new(
            # Must be a valid date. Must be a date after or equal to
            # <code>period_b.start</code>.
            end_:,
            # Must be a valid date.
            start:
          )
          end

          sig { override.returns({ end_: String, start: String }) }
          def to_hash
          end
        end

        # Comparison granularity
        module Granularity
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHS =
            T.let(
              :months,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )
          QUARTERS =
            T.let(
              :quarters,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )
          HALF_YEARS =
            T.let(
              :half_years,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )
          YEARS =
            T.let(
              :years,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The statistic type to compare
        module StatType
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOTAL_EARNINGS =
            T.let(
              :totalEarnings,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          SUBSCRIPTIONS =
            T.let(
              :subscriptions,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          POSTS =
            T.let(
              :posts,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          MESSAGES =
            T.let(
              :messages,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          TIPS =
            T.let(
              :tips,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          STREAMS =
            T.let(
              :streams,
              Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
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
