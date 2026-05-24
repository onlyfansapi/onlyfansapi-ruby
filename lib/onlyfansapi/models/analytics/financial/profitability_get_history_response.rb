# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        class ProfitabilityGetHistoryResponseItem < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute gross_revenue
          #
          #   @return [Float, nil]
          optional :gross_revenue, Float

          # @!attribute margin
          #
          #   @return [Float, nil]
          optional :margin, Float

          # @!attribute month
          #
          #   @return [Integer, nil]
          optional :month, Integer

          # @!attribute net_revenue
          #
          #   @return [Float, nil]
          optional :net_revenue, Float

          # @!attribute profit
          #
          #   @return [Float, nil]
          optional :profit, Float

          # @!attribute year
          #
          #   @return [Integer, nil]
          optional :year, Integer

          # @!method initialize(gross_revenue: nil, margin: nil, month: nil, net_revenue: nil, profit: nil, year: nil)
          #   @param gross_revenue [Float]
          #   @param margin [Float]
          #   @param month [Integer]
          #   @param net_revenue [Float]
          #   @param profit [Float]
          #   @param year [Integer]
        end

        # @type [Onlyfansapi::Internal::Type::Converter]
        ProfitabilityGetHistoryResponse =
          Onlyfansapi::Internal::Type::ArrayOf[-> { Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetHistoryResponseItem }]
      end
    end
  end
end
