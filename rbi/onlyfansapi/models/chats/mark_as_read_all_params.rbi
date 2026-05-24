# typed: strong

module Onlyfansapi
  module Models
    module Chats
      class MarkAsReadAllParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Chats::MarkAsReadAllParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig do
          params(
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account:, request_options: {})
        end

        sig do
          override.returns(
            { account: String, request_options: Onlyfansapi::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
