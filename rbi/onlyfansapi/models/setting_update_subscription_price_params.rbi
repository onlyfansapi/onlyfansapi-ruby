# typed: strong

module Onlyfansapi
  module Models
    class SettingUpdateSubscriptionPriceParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SettingUpdateSubscriptionPriceParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The new subscription price. Accepts `0`, `"free"`, or a number between 4.99
      # and 200.
      sig { returns(String) }
      attr_accessor :price

      sig do
        params(
          account: String,
          price: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The new subscription price. Accepts `0`, `"free"`, or a number between 4.99
        # and 200.
        price:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            price: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
