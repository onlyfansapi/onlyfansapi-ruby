# typed: strong

module Onlyfansapi
  module Models
    class AuthenticateStartResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::AuthenticateStartResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :attempt_id

      sig { params(attempt_id: String).void }
      attr_writer :attempt_id

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { returns(T.nilable(String)) }
      attr_reader :polling_url

      sig { params(polling_url: String).void }
      attr_writer :polling_url

      sig do
        params(
          attempt_id: String,
          message: String,
          polling_url: String
        ).returns(T.attached_class)
      end
      def self.new(attempt_id: nil, message: nil, polling_url: nil)
      end

      sig do
        override.returns(
          { attempt_id: String, message: String, polling_url: String }
        )
      end
      def to_hash
      end
    end
  end
end
