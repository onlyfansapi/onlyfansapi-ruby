# typed: strong

module Onlyfansapi
  module Models
    class StatisticCalculateTotalTransactionsResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::StatisticCalculateTotalTransactionsResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Float)) }
      attr_reader :total_amount

      sig { params(total_amount: Float).void }
      attr_writer :total_amount

      sig { returns(T.nilable(Integer)) }
      attr_reader :total_transactions

      sig { params(total_transactions: Integer).void }
      attr_writer :total_transactions

      sig do
        params(total_amount: Float, total_transactions: Integer).returns(
          T.attached_class
        )
      end
      def self.new(total_amount: nil, total_transactions: nil)
      end

      sig do
        override.returns({ total_amount: Float, total_transactions: Integer })
      end
      def to_hash
      end
    end
  end
end
