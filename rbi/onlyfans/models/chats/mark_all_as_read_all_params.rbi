# typed: strong

module Onlyfans
  module Models
    module Chats
      class MarkAllAsReadAllParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Chats::MarkAllAsReadAllParams,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        sig do
          params(
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(account:, request_options: {})
        end

        sig do
          override.returns(
            { account: String, request_options: Onlyfans::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
