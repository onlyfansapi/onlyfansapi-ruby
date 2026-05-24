# typed: strong

module Onlyfansapi
  module Models
    class AuthenticateReauthenticateResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::AuthenticateReauthenticateResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { returns(T.nilable(String)) }
      attr_reader :polling_url

      sig { params(polling_url: String).void }
      attr_writer :polling_url

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :success

      sig { params(success: T::Boolean).void }
      attr_writer :success

      sig do
        params(
          message: String,
          polling_url: String,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(message: nil, polling_url: nil, success: nil)
      end

      sig do
        override.returns(
          { message: String, polling_url: String, success: T::Boolean }
        )
      end
      def to_hash
      end
    end
  end
end
