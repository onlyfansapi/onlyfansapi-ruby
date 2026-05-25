# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      # @see Onlyfans::Resources::Analytics::Summary#get_period_comparison
      class SummaryGetPeriodComparisonParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        # @!attribute account_ids
        #   Array of account prefixed IDs to compare
        #
        #   @return [Array<String>]
        required :account_ids, Onlyfans::Internal::Type::ArrayOf[String]

        # @!attribute period_a
        #   First period to compare
        #
        #   @return [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodA]
        required :period_a, -> { Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodA }

        # @!attribute period_b
        #   Second period to compare
        #
        #   @return [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodB]
        required :period_b, -> { Onlyfans::Analytics::SummaryGetPeriodComparisonParams::PeriodB }

        # @!attribute granularity
        #   Comparison granularity
        #
        #   @return [Symbol, Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::Granularity, nil]
        optional :granularity, enum: -> { Onlyfans::Analytics::SummaryGetPeriodComparisonParams::Granularity }

        # @!attribute stat_type
        #   The statistic type to compare
        #
        #   @return [Symbol, Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::StatType, nil]
        optional :stat_type, enum: -> { Onlyfans::Analytics::SummaryGetPeriodComparisonParams::StatType }

        # @!method initialize(account_ids:, period_a:, period_b:, granularity: nil, stat_type: nil, request_options: {})
        #   @param account_ids [Array<String>] Array of account prefixed IDs to compare
        #
        #   @param period_a [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodA] First period to compare
        #
        #   @param period_b [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodB] Second period to compare
        #
        #   @param granularity [Symbol, Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::Granularity] Comparison granularity
        #
        #   @param stat_type [Symbol, Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::StatType] The statistic type to compare
        #
        #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

        class PeriodA < Onlyfans::Internal::Type::BaseModel
          # @!attribute end_
          #   Must be a valid date. Must be a date after or equal to
          #   <code>period_a.start</code>.
          #
          #   @return [String]
          required :end_, String, api_name: :end

          # @!attribute start
          #   Must be a valid date.
          #
          #   @return [String]
          required :start, String

          # @!method initialize(end_:, start:)
          #   Some parameter documentations has been truncated, see
          #   {Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodA} for
          #   more details.
          #
          #   First period to compare
          #
          #   @param end_ [String] Must be a valid date. Must be a date after or equal to <code>period_a.start</cod
          #
          #   @param start [String] Must be a valid date.
        end

        class PeriodB < Onlyfans::Internal::Type::BaseModel
          # @!attribute end_
          #   Must be a valid date. Must be a date after or equal to
          #   <code>period_b.start</code>.
          #
          #   @return [String]
          required :end_, String, api_name: :end

          # @!attribute start
          #   Must be a valid date.
          #
          #   @return [String]
          required :start, String

          # @!method initialize(end_:, start:)
          #   Some parameter documentations has been truncated, see
          #   {Onlyfans::Models::Analytics::SummaryGetPeriodComparisonParams::PeriodB} for
          #   more details.
          #
          #   Second period to compare
          #
          #   @param end_ [String] Must be a valid date. Must be a date after or equal to <code>period_b.start</cod
          #
          #   @param start [String] Must be a valid date.
        end

        # Comparison granularity
        module Granularity
          extend Onlyfans::Internal::Type::Enum

          MONTHS = :months
          QUARTERS = :quarters
          HALF_YEARS = :half_years
          YEARS = :years

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The statistic type to compare
        module StatType
          extend Onlyfans::Internal::Type::Enum

          TOTAL_EARNINGS = :totalEarnings
          SUBSCRIPTIONS = :subscriptions
          POSTS = :posts
          MESSAGES = :messages
          TIPS = :tips
          STREAMS = :streams

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
