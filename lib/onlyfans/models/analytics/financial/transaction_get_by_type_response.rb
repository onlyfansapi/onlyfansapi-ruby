# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      module Financial
        class TransactionGetByTypeResponseItem < Onlyfans::Internal::Type::BaseModel
          # @!attribute count
          #
          #   @return [Integer, nil]
          optional :count, Integer

          # @!attribute total
          #
          #   @return [Float, nil]
          optional :total, Float

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(count: nil, total: nil, type: nil)
          #   @param count [Integer]
          #   @param total [Float]
          #   @param type [String]
        end

        # @type [Onlyfans::Internal::Type::Converter]
        TransactionGetByTypeResponse =
          Onlyfans::Internal::Type::ArrayOf[-> { Onlyfans::Models::Analytics::Financial::TransactionGetByTypeResponseItem }]
      end
    end
  end
end
