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

      # Optionally, filter the chats by type.
      sig { returns(T.nilable(Onlyfansapi::ChatListParams::Filter::OrSymbol)) }
      attr_reader :filter

      sig { params(filter: Onlyfansapi::ChatListParams::Filter::OrSymbol).void }
      attr_writer :filter

      # Number of chats to return (1 - 100). Default = 10
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # Number of chats to skip for pagination
      sig { returns(T.nilable(String)) }
      attr_reader :offset

      sig { params(offset: String).void }
      attr_writer :offset

      # Sort order for chats (recent or old). Default = recent
      sig { returns(T.nilable(Onlyfansapi::ChatListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: Onlyfansapi::ChatListParams::Order::OrSymbol).void }
      attr_writer :order

      # Search query to filter chats
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Whether to skip user details in response (all or none). Default = all
      sig do
        returns(T.nilable(Onlyfansapi::ChatListParams::SkipUsers::OrSymbol))
      end
      attr_reader :skip_users

      sig do
        params(
          skip_users: Onlyfansapi::ChatListParams::SkipUsers::OrSymbol
        ).void
      end
      attr_writer :skip_users

      sig do
        params(
          account: String,
          filter: Onlyfansapi::ChatListParams::Filter::OrSymbol,
          limit: String,
          offset: String,
          order: Onlyfansapi::ChatListParams::Order::OrSymbol,
          query: String,
          skip_users: Onlyfansapi::ChatListParams::SkipUsers::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Optionally, filter the chats by type.
        filter: nil,
        # Number of chats to return (1 - 100). Default = 10
        limit: nil,
        # Number of chats to skip for pagination
        offset: nil,
        # Sort order for chats (recent or old). Default = recent
        order: nil,
        # Search query to filter chats
        query: nil,
        # Whether to skip user details in response (all or none). Default = all
        skip_users: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfansapi::ChatListParams::Filter::OrSymbol,
            limit: String,
            offset: String,
            order: Onlyfansapi::ChatListParams::Order::OrSymbol,
            query: String,
            skip_users: Onlyfansapi::ChatListParams::SkipUsers::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optionally, filter the chats by type.
      module Filter
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::ChatListParams::Filter) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PINNED =
          T.let(:pinned, Onlyfansapi::ChatListParams::Filter::TaggedSymbol)
        PRIORITY =
          T.let(:priority, Onlyfansapi::ChatListParams::Filter::TaggedSymbol)
        UNREAD =
          T.let(:unread, Onlyfansapi::ChatListParams::Filter::TaggedSymbol)
        WITH_TIPS =
          T.let(:with_tips, Onlyfansapi::ChatListParams::Filter::TaggedSymbol)
        UNREAD_WITH_TIPS =
          T.let(
            :unread_with_tips,
            Onlyfansapi::ChatListParams::Filter::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::ChatListParams::Filter::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort order for chats (recent or old). Default = recent
      module Order
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::ChatListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECENT =
          T.let(:recent, Onlyfansapi::ChatListParams::Order::TaggedSymbol)
        OLD = T.let(:old, Onlyfansapi::ChatListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::ChatListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether to skip user details in response (all or none). Default = all
      module SkipUsers
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfansapi::ChatListParams::SkipUsers) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL = T.let(:all, Onlyfansapi::ChatListParams::SkipUsers::TaggedSymbol)
        NONE =
          T.let(:none, Onlyfansapi::ChatListParams::SkipUsers::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfansapi::ChatListParams::SkipUsers::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
