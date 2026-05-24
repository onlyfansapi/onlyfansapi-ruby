# typed: strong

module Onlyfansapi
  module Models
    module Media
      module Vault
        module Lists
          class MediaRemoveParams < Onlyfansapi::Internal::Type::BaseModel
            extend Onlyfansapi::Internal::Type::RequestParameters::Converter
            include Onlyfansapi::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Media::Vault::Lists::MediaRemoveParams,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account

            sig { returns(String) }
            attr_accessor :list_id

            # Array of media IDs to delete.
            sig { returns(T::Array[String]) }
            attr_accessor :media_ids

            sig do
              params(
                account: String,
                list_id: String,
                media_ids: T::Array[String],
                request_options: Onlyfansapi::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              account:,
              list_id:,
              # Array of media IDs to delete.
              media_ids:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  account: String,
                  list_id: String,
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
  end
end
