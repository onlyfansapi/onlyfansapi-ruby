# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        # @see Onlyfansapi::Resources::Analytics::Financial::Transactions#get_summary
        class TransactionGetSummaryResponse < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute disputed_count
          #
          #   @return [Integer, nil]
          optional :disputed_count, Integer

          # @!attribute refunded_count
          #
          #   @return [Integer, nil]
          optional :refunded_count, Integer

          # @!attribute succeeded_count
          #
          #   @return [Integer, nil]
          optional :succeeded_count, Integer

          # @!attribute total_fees
          #
          #   @return [Float, nil]
          optional :total_fees, Float

          # @!attribute total_gross
          #
          #   @return [Float, nil]
          optional :total_gross, Float

          # @!attribute total_net
          #
          #   @return [Float, nil]
          optional :total_net, Float

          # @!method initialize(disputed_count: nil, refunded_count: nil, succeeded_count: nil, total_fees: nil, total_gross: nil, total_net: nil)
          #   @param disputed_count [Integer]
          #   @param refunded_count [Integer]
          #   @param succeeded_count [Integer]
          #   @param total_fees [Float]
          #   @param total_gross [Float]
          #   @param total_net [Float]
        end
      end
    end
  end
end
