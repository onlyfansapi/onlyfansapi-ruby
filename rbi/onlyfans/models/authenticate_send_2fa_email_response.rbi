# typed: strong

module Onlyfans
  module Models
    class AuthenticateSend2faEmailResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::AuthenticateSend2faEmailResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :success

      sig { params(success: T::Boolean).void }
      attr_writer :success

      sig do
        params(message: String, success: T::Boolean).returns(T.attached_class)
      end
      def self.new(message: nil, success: nil)
      end

      sig { override.returns({ message: String, success: T::Boolean }) }
      def to_hash
      end
    end
  end
end
