# typed: strong

module Onlyfansapi
  module Models
    module Chats
      class MessageSearchParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Chats::MessageSearchParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig { returns(String) }
        attr_accessor :chat_id

        # The query search in messages
        sig { returns(String) }
        attr_accessor :query

        sig do
          params(
            account: String,
            chat_id: String,
            query: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          chat_id:,
          # The query search in messages
          query:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              chat_id: String,
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
end
