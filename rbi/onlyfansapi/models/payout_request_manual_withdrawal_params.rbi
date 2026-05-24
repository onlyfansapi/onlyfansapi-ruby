# typed: strong

module Onlyfansapi
  module Models
    class PayoutRequestManualWithdrawalParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::PayoutRequestManualWithdrawalParams,
            Onlyfansapi::Internal::AnyHash
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
          request_options: Onlyfansapi::RequestOptions::OrHash
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
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
