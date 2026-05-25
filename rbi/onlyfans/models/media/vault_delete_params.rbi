# typed: strong

module Onlyfans
  module Models
    module Media
      class VaultDeleteParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Media::VaultDeleteParams,
              Onlyfans::Internal::AnyHash
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
            request_options: Onlyfans::RequestOptions::OrHash
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
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
