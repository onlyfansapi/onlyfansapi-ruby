# typed: strong

module Onlyfansapi
  module Models
    class AuthenticateSubmit2faParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::AuthenticateSubmit2faParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :attempt_id

      # The 2FA code you received on your phone
      sig { returns(String) }
      attr_accessor :code

      sig do
        params(
          attempt_id: String,
          code: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        attempt_id:,
        # The 2FA code you received on your phone
        code:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            attempt_id: String,
            code: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
