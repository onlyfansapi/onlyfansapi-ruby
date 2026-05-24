# typed: strong

module Onlyfansapi
  module Models
    class AuthenticatePollStatusParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::AuthenticatePollStatusParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :attempt_id

      sig do
        params(
          attempt_id: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(attempt_id:, request_options: {})
      end

      sig do
        override.returns(
          { attempt_id: String, request_options: Onlyfansapi::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
