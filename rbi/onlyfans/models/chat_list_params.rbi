# typed: strong

module Onlyfans
  module Models
    class ChatListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::ChatListParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      # Optionally, filter the chats by type.
      sig { returns(T.nilable(Onlyfans::ChatListParams::Filter::OrSymbol)) }
      attr_reader :filter

      sig { params(filter: Onlyfans::ChatListParams::Filter::OrSymbol).void }
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
      sig { returns(T.nilable(Onlyfans::ChatListParams::Order::OrSymbol)) }
      attr_reader :order

      sig { params(order: Onlyfans::ChatListParams::Order::OrSymbol).void }
      attr_writer :order

      # Search query to filter chats
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Whether to skip user details in response (all or none). Default = all
      sig { returns(T.nilable(Onlyfans::ChatListParams::SkipUsers::OrSymbol)) }
      attr_reader :skip_users

      sig do
        params(skip_users: Onlyfans::ChatListParams::SkipUsers::OrSymbol).void
      end
      attr_writer :skip_users

      sig do
        params(
          account: String,
          filter: Onlyfans::ChatListParams::Filter::OrSymbol,
          limit: String,
          offset: String,
          order: Onlyfans::ChatListParams::Order::OrSymbol,
          query: String,
          skip_users: Onlyfans::ChatListParams::SkipUsers::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
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
            filter: Onlyfans::ChatListParams::Filter::OrSymbol,
            limit: String,
            offset: String,
            order: Onlyfans::ChatListParams::Order::OrSymbol,
            query: String,
            skip_users: Onlyfans::ChatListParams::SkipUsers::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optionally, filter the chats by type.
      module Filter
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::ChatListParams::Filter) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PINNED = T.let(:pinned, Onlyfans::ChatListParams::Filter::TaggedSymbol)
        PRIORITY =
          T.let(:priority, Onlyfans::ChatListParams::Filter::TaggedSymbol)
        UNREAD = T.let(:unread, Onlyfans::ChatListParams::Filter::TaggedSymbol)
        WITH_TIPS =
          T.let(:with_tips, Onlyfans::ChatListParams::Filter::TaggedSymbol)
        UNREAD_WITH_TIPS =
          T.let(
            :unread_with_tips,
            Onlyfans::ChatListParams::Filter::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::ChatListParams::Filter::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort order for chats (recent or old). Default = recent
      module Order
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::ChatListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECENT = T.let(:recent, Onlyfans::ChatListParams::Order::TaggedSymbol)
        OLD = T.let(:old, Onlyfans::ChatListParams::Order::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::ChatListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Whether to skip user details in response (all or none). Default = all
      module SkipUsers
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::ChatListParams::SkipUsers) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL = T.let(:all, Onlyfans::ChatListParams::SkipUsers::TaggedSymbol)
        NONE = T.let(:none, Onlyfans::ChatListParams::SkipUsers::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::ChatListParams::SkipUsers::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
