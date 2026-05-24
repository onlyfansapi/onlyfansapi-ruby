# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkPostbackDeleteParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SmartLinkPostbackDeleteParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :postback_id

      sig do
        params(
          postback_id: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(postback_id:, request_options: {})
      end

      sig do
        override.returns(
          { postback_id: Integer, request_options: Onlyfansapi::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
