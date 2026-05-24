# typed: strong

module Onlyfansapi
  module Models
    module Media
      class VaultDeleteParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Media::VaultDeleteParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Array of media IDs to delete.
        sig { returns(T::Array[String]) }
        attr_accessor :media_ids

        sig do
          params(
            account: String,
            media_ids: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Array of media IDs to delete.
          media_ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              media_ids: T::Array[String],
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
