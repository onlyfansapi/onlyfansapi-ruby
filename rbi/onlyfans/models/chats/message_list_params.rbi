# typed: strong

module Onlyfans
  module Models
    module Chats
      class MessageListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Chats::MessageListParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :chat_id

        # Filter by certain messages. Currently, only pins are filterable.
        sig do
          returns(
            T.nilable(Onlyfans::Chats::MessageListParams::Filter::OrSymbol)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter: Onlyfans::Chats::MessageListParams::Filter::OrSymbol
          ).void
        end
        attr_writer :filter

        # Use for pagination when `order=desc` (newest to oldest). Include this message ID
        # as the first message in the results. Used to retrieve messages from e.g. the
        # Search Chat Messages endpoint IDs.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_id

        # Use for pagination when `order=asc` (oldest to newest). Include this message ID
        # as the first message in the results. WARNING! The response list of messages will
        # also be inverted (oldest messages will be first, opposite to default where
        # `order=desc`).
        sig { returns(T.nilable(String)) }
        attr_accessor :last_id

        # The number of messages to return (default = 10, max = 100)
        sig { returns(T.nilable(String)) }
        attr_reader :limit

        sig { params(limit: String).void }
        attr_writer :limit

        # Sort order for messages (desc or asc)
        sig { returns(T.nilable(String)) }
        attr_reader :order

        sig { params(order: String).void }
        attr_writer :order

        # Whether to skip user details (`all` or `none`).
        sig { returns(T.nilable(String)) }
        attr_reader :skip_users

        sig { params(skip_users: String).void }
        attr_writer :skip_users

        sig do
          params(
            account: String,
            chat_id: String,
            filter: Onlyfans::Chats::MessageListParams::Filter::OrSymbol,
            first_id: T.nilable(String),
            last_id: T.nilable(String),
            limit: String,
            order: String,
            skip_users: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          chat_id:,
          # Filter by certain messages. Currently, only pins are filterable.
          filter: nil,
          # Use for pagination when `order=desc` (newest to oldest). Include this message ID
          # as the first message in the results. Used to retrieve messages from e.g. the
          # Search Chat Messages endpoint IDs.
          first_id: nil,
          # Use for pagination when `order=asc` (oldest to newest). Include this message ID
          # as the first message in the results. WARNING! The response list of messages will
          # also be inverted (oldest messages will be first, opposite to default where
          # `order=desc`).
          last_id: nil,
          # The number of messages to return (default = 10, max = 100)
          limit: nil,
          # Sort order for messages (desc or asc)
          order: nil,
          # Whether to skip user details (`all` or `none`).
          skip_users: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              chat_id: String,
              filter: Onlyfans::Chats::MessageListParams::Filter::OrSymbol,
              first_id: T.nilable(String),
              last_id: T.nilable(String),
              limit: String,
              order: String,
              skip_users: String,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by certain messages. Currently, only pins are filterable.
        module Filter
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::Chats::MessageListParams::Filter)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PINNED =
            T.let(
              :pinned,
              Onlyfans::Chats::MessageListParams::Filter::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Onlyfans::Chats::MessageListParams::Filter::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
