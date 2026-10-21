# typed: strong

module Onlyfans
  module Models
    module Media
      module Vault
        class ListUpdateParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Media::Vault::ListUpdateParams,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          sig { returns(String) }
          attr_accessor :list_id

          # The new name for the vault list. Must not be greater than 255 characters.
          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              account: String,
              list_id: String,
              name: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            list_id:,
            # The new name for the vault list. Must not be greater than 255 characters.
            name:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                list_id: String,
                name: String,
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
