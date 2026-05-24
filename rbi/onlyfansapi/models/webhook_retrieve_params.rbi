# typed: strong

module Onlyfansapi
  module Models
    class WebhookRetrieveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::WebhookRetrieveParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :webhook_id

      sig do
        params(
          webhook_id: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(webhook_id:, request_options: {})
      end

      sig do
        override.returns(
          { webhook_id: String, request_options: Onlyfansapi::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
