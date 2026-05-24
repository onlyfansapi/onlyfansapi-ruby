# typed: strong

module Onlyfansapi
  module Models
    module Chats
      class MessageLikeParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Chats::MessageLikeParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :chat_id

        sig { returns(String) }
        attr_accessor :message_id

        sig do
          params(
            account: String,
            chat_id: String,
            message_id: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account:, chat_id:, message_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              account: String,
              chat_id: String,
              message_id: String,
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
