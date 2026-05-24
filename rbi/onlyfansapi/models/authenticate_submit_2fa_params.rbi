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

      # The 2FA code you received on your phone. Must be empty if
      # `selfie_verification_completed` is `true`.
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # This field is required when <code>code</code> is not present.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :selfie_verification_completed

      sig { params(selfie_verification_completed: T.anything).void }
      attr_writer :selfie_verification_completed

      sig do
        params(
          attempt_id: String,
          code: String,
          selfie_verification_completed: T.anything,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        attempt_id:,
        # The 2FA code you received on your phone. Must be empty if
        # `selfie_verification_completed` is `true`.
        code: nil,
        # This field is required when <code>code</code> is not present.
        selfie_verification_completed: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            attempt_id: String,
            code: String,
            selfie_verification_completed: T.anything,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
