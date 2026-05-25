# typed: strong

module Onlyfans
  module Models
    module Media
      module Vault
        module Lists
          class MediaAddParams < Onlyfans::Internal::Type::BaseModel
            extend Onlyfans::Internal::Type::RequestParameters::Converter
            include Onlyfans::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Media::Vault::Lists::MediaAddParams,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account

            sig { returns(String) }
            attr_accessor :list_id

            # Array of media IDs to add.
            sig { returns(T::Array[String]) }
            attr_accessor :media_ids

            sig do
              params(
                account: String,
                list_id: String,
                media_ids: T::Array[String],
                request_options: Onlyfans::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              account:,
              list_id:,
              # Array of media IDs to add.
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
  end
end
