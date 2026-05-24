# typed: strong

module Onlyfansapi
  module Models
    class BundleDeleteParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::BundleDeleteParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(String) }
      attr_accessor :bundle_id

      sig do
        params(
          account: String,
          bundle_id: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(account:, bundle_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            account: String,
            bundle_id: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
