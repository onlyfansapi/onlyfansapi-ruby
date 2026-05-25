# typed: strong

module Onlyfans
  module Models
    module Analytics
      class SummaryGetPeriodComparisonParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams,
              Onlyfans::Internal::AnyHash
            )
          end

        # Array of account prefixed IDs to compare
        sig { returns(T::Array[String]) }
        attr_accessor :account_ids

        # First period to compare
        sig do
          returns(
            Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodA
          )
        end
        attr_reader :period_a

        sig do
          params(
            period_a:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodA::OrHash
          ).void
        end
        attr_writer :period_a

        # Second period to compare
        sig do
          returns(
            Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodB
          )
        end
        attr_reader :period_b

        sig do
          params(
            period_b:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodB::OrHash
          ).void
        end
        attr_writer :period_b

        # Comparison granularity
        sig do
          returns(
            T.nilable(
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol
            )
          )
        end
        attr_reader :granularity

        sig do
          params(
            granularity:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol
          ).void
        end
        attr_writer :granularity

        # The statistic type to compare
        sig do
          returns(
            T.nilable(
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol
            )
          )
        end
        attr_reader :stat_type

        sig do
          params(
            stat_type:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol
          ).void
        end
        attr_writer :stat_type

        sig do
          params(
            account_ids: T::Array[String],
            period_a:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodA::OrHash,
            period_b:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodB::OrHash,
            granularity:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol,
            stat_type:
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
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
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodA,
              period_b:
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodB,
              granularity:
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::OrSymbol,
              stat_type:
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::OrSymbol,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        class PeriodA < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodA,
                Onlyfans::Internal::AnyHash
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

        class PeriodB < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodB,
                Onlyfans::Internal::AnyHash
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
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHS =
            T.let(
              :months,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )
          QUARTERS =
            T.let(
              :quarters,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )
          HALF_YEARS =
            T.let(
              :half_years,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )
          YEARS =
            T.let(
              :years,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The statistic type to compare
        module StatType
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOTAL_EARNINGS =
            T.let(
              :totalEarnings,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          SUBSCRIPTIONS =
            T.let(
              :subscriptions,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          POSTS =
            T.let(
              :posts,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          MESSAGES =
            T.let(
              :messages,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          TIPS =
            T.let(
              :tips,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )
          STREAMS =
            T.let(
              :streams,
              Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType::TaggedSymbol
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
