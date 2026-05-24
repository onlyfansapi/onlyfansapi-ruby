# typed: strong

module Onlyfansapi
  module Models
    class ChatListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfansapi::ChatListParams, Onlyfansapi::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Number of chats to return (10, 20, or 30)
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # Number of chats to skip for pagination
      sig { returns(T.nilable(String)) }
      attr_reader :offset

      sig { params(offset: String).void }
      attr_writer :offset

      # Sort order for chats (recent or old)
      sig { returns(T.nilable(String)) }
      attr_reader :order

      sig { params(order: String).void }
      attr_writer :order

      # Search query to filter chats
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Whether to skip user details in response (all or none)
      sig { returns(T.nilable(String)) }
      attr_reader :skip_users

      sig { params(skip_users: String).void }
      attr_writer :skip_users

      sig do
        params(
          account: String,
          limit: String,
          offset: String,
          order: String,
          query: String,
          skip_users: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Number of chats to return (10, 20, or 30)
        limit: nil,
        # Number of chats to skip for pagination
        offset: nil,
        # Sort order for chats (recent or old)
        order: nil,
        # Search query to filter chats
        query: nil,
        # Whether to skip user details in response (all or none)
        skip_users: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            limit: String,
            offset: String,
            order: String,
            query: String,
            skip_users: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
