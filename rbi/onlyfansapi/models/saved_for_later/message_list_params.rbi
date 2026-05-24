# typed: strong

module Onlyfansapi
  module Models
    module SavedForLater
      class MessageListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::SavedForLater::MessageListParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Maximum number of messages to return (default = 10)
        sig { returns(Integer) }
        attr_accessor :limit

        # Offset for pagination (default = 0)
        sig { returns(Integer) }
        attr_accessor :offset

        sig do
          params(
            account: String,
            limit: Integer,
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Maximum number of messages to return (default = 10)
          limit:,
          # Offset for pagination (default = 0)
          offset:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              limit: Integer,
              offset: Integer,
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
