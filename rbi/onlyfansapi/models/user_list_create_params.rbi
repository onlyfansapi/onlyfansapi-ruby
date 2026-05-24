# typed: strong

module Onlyfansapi
  module Models
    class UserListCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::UserListCreateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Must not be greater than 64 characters.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          account: String,
          name: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Must not be greater than 64 characters.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            name: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
