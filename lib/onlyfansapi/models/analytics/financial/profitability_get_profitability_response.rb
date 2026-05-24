# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        class ProfitabilityGetProfitabilityResponseItem < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute commission
          #
          #   @return [Float, nil]
          optional :commission, Float

          # @!attribute creator_id
          #
          #   @return [Integer, nil]
          optional :creator_id, Integer

          # @!attribute gross_revenue
          #
          #   @return [Float, nil]
          optional :gross_revenue, Float

          # @!attribute margin
          #
          #   @return [Float, nil]
          optional :margin, Float

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute net_revenue
          #
          #   @return [Float, nil]
          optional :net_revenue, Float

          # @!attribute profit
          #
          #   @return [Float, nil]
          optional :profit, Float

          # @!attribute total_costs
          #
          #   @return [Float, nil]
          optional :total_costs, Float

          # @!method initialize(commission: nil, creator_id: nil, gross_revenue: nil, margin: nil, name: nil, net_revenue: nil, profit: nil, total_costs: nil)
          #   @param commission [Float]
          #   @param creator_id [Integer]
          #   @param gross_revenue [Float]
          #   @param margin [Float]
          #   @param name [String]
          #   @param net_revenue [Float]
          #   @param profit [Float]
          #   @param total_costs [Float]
        end

        # @type [Onlyfansapi::Internal::Type::Converter]
        ProfitabilityGetProfitabilityResponse =
          Onlyfansapi::Internal::Type::ArrayOf[-> { Onlyfansapi::Models::Analytics::Financial::ProfitabilityGetProfitabilityResponseItem }]
      end
    end
  end
end
