# typed: strong

module Onlyfansapi
  module Models
    class UserListUpdateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::UserListUpdateParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(Integer) }
      attr_accessor :user_list_id

      # Must not be greater than 64 characters.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          account: String,
          user_list_id: Integer,
          name: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        user_list_id:,
        # Must not be greater than 64 characters.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            user_list_id: Integer,
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
