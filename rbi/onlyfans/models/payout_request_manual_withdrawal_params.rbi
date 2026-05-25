# typed: strong

module Onlyfans
  module Models
    class PayoutRequestManualWithdrawalParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::PayoutRequestManualWithdrawalParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The amount to withdraw. Amount may not be higher than the current balance.
      sig { returns(Integer) }
      attr_accessor :amount

      sig do
        params(
          account: String,
          amount: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The amount to withdraw. Amount may not be higher than the current balance.
        amount:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            amount: Integer,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
