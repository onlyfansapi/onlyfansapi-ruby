# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Analytics
      module Financial
        class TransactionGetByTypeResponseItem < Onlyfansapi::Internal::Type::BaseModel
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

        # @type [Onlyfansapi::Internal::Type::Converter]
        TransactionGetByTypeResponse =
          Onlyfansapi::Internal::Type::ArrayOf[-> { Onlyfansapi::Models::Analytics::Financial::TransactionGetByTypeResponseItem }]
      end
    end
  end
end
