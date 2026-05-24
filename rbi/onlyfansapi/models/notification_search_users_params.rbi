# typed: strong

module Onlyfansapi
  module Models
    class NotificationSearchUsersParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::NotificationSearchUsersParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # The query to search for. Can be either a name or username.
      sig { returns(String) }
      attr_accessor :query

      sig do
        params(
          account: String,
          query: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # The query to search for. Can be either a name or username.
        query:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            query: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
