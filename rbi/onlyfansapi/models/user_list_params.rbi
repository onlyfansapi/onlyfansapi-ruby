# typed: strong

module Onlyfansapi
  module Models
    class UserListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::UserListParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Comma-separated list of user IDs (max. 10 IDs). Must be at least 1 character.
      sig { returns(String) }
      attr_accessor :ids

      sig do
        params(
          account: String,
          ids: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Comma-separated list of user IDs (max. 10 IDs). Must be at least 1 character.
        ids:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            ids: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
