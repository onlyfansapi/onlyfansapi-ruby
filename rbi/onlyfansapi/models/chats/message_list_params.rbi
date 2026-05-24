# typed: strong

module Onlyfansapi
  module Models
    module Chats
      class MessageListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Chats::MessageListParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :chat_id

        # ID of the last message from previous page. Used for pagination
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Sort order for messages (desc or asc)
        sig { returns(T.nilable(String)) }
        attr_reader :order

        sig { params(order: String).void }
        attr_writer :order

        # Whether to skip user details (all or none)
        sig { returns(T.nilable(String)) }
        attr_reader :skip_users

        sig { params(skip_users: String).void }
        attr_writer :skip_users

        sig do
          params(
            account: String,
            chat_id: String,
            id: String,
            order: String,
            skip_users: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          chat_id:,
          # ID of the last message from previous page. Used for pagination
          id: nil,
          # Sort order for messages (desc or asc)
          order: nil,
          # Whether to skip user details (all or none)
          skip_users: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              chat_id: String,
              id: String,
              order: String,
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
end
