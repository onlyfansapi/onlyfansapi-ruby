# typed: strong

module Onlyfans
  module Models
    class AuthenticateReauthenticateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::AuthenticateReauthenticateParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          account_id: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(account_id:, request_options: {})
      end

      sig do
        override.returns(
          { account_id: String, request_options: Onlyfans::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
