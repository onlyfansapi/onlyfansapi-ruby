# typed: strong

module Onlyfansapi
  module Models
    class AccountListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::AccountListParams, Onlyfansapi::Internal::AnyHash)
        end

      # Optionally, filter by the OnlyFans email
      sig { returns(T.nilable(String)) }
      attr_accessor :onlyfans_email

      # Optionally, filter by the OnlyFans ID
      sig { returns(T.nilable(String)) }
      attr_accessor :onlyfans_id

      # Optionally, filter by the OnlyFans username
      sig { returns(T.nilable(String)) }
      attr_accessor :onlyfans_username

      sig do
        params(
          onlyfans_email: T.nilable(String),
          onlyfans_id: T.nilable(String),
          onlyfans_username: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Optionally, filter by the OnlyFans email
        onlyfans_email: nil,
        # Optionally, filter by the OnlyFans ID
        onlyfans_id: nil,
        # Optionally, filter by the OnlyFans username
        onlyfans_username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            onlyfans_email: T.nilable(String),
            onlyfans_id: T.nilable(String),
            onlyfans_username: T.nilable(String),
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
