# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      # @see Onlyfans::Resources::Analytics::Summary#get_period_comparison
      class SummaryGetPeriodComparisonResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute breakdown
        #
        #   @return [Array<Object>, nil]
        optional :breakdown, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

        # @!attribute chart_data
        #
        #   @return [Array<Object>, nil]
        optional :chart_data, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

        # @!attribute period_a_label
        #
        #   @return [String, nil]
        optional :period_a_label, String

        # @!attribute period_b_label
        #
        #   @return [String, nil]
        optional :period_b_label, String

        # @!attribute summary
        #
        #   @return [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary, nil]
        optional :summary, -> { Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary }

        # @!method initialize(breakdown: nil, chart_data: nil, period_a_label: nil, period_b_label: nil, summary: nil)
        #   @param breakdown [Array<Object>]
        #   @param chart_data [Array<Object>]
        #   @param period_a_label [String]
        #   @param period_b_label [String]
        #   @param summary [Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse::Summary]

        # @see Onlyfans::Models::Analytics::SummaryGetPeriodComparisonResponse#summary
        class Summary < Onlyfans::Internal::Type::BaseModel
          # @!attribute change
          #
          #   @return [Float, nil]
          optional :change, Float

          # @!attribute change_percentage
          #
          #   @return [Float, nil]
          optional :change_percentage, Float

          # @!attribute period_a_total
          #
          #   @return [Float, nil]
          optional :period_a_total, Float

          # @!attribute period_b_total
          #
          #   @return [Float, nil]
          optional :period_b_total, Float

          # @!method initialize(change: nil, change_percentage: nil, period_a_total: nil, period_b_total: nil)
          #   @param change [Float]
          #   @param change_percentage [Float]
          #   @param period_a_total [Float]
          #   @param period_b_total [Float]
        end
      end
    end
  end
end
