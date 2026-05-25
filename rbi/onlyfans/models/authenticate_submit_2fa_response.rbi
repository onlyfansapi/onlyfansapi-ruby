# typed: strong

module Onlyfans
  module Models
    class AuthenticateSubmit2faResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::AuthenticateSubmit2faResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      sig { params(message: String).returns(T.attached_class) }
      def self.new(message: nil)
      end

      sig { override.returns({ message: String }) }
      def to_hash
      end
    end
  end
end
