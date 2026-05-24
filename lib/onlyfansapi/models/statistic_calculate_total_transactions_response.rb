# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Statistics#calculate_total_transactions
    class StatisticCalculateTotalTransactionsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute total_amount
      #
      #   @return [Float, nil]
      optional :total_amount, Float

      # @!attribute total_transactions
      #
      #   @return [Integer, nil]
      optional :total_transactions, Integer

      # @!method initialize(total_amount: nil, total_transactions: nil)
      #   @param total_amount [Float]
      #   @param total_transactions [Integer]
    end
  end
end
