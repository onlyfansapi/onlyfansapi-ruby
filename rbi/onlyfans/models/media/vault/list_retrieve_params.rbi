# typed: strong

module Onlyfans
  module Models
    module Media
      module Vault
        class ListRetrieveParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Media::Vault::ListRetrieveParams,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          sig { returns(String) }
          attr_accessor :list_id

          sig do
            params(
              account: String,
              list_id: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(account:, list_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                account: String,
                list_id: String,
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
