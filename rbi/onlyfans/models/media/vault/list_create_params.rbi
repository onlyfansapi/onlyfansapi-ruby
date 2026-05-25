# typed: strong

module Onlyfans
  module Models
    module Media
      module Vault
        class ListCreateParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Media::Vault::ListCreateParams,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # The name of your new list
          sig { returns(String) }
          attr_accessor :name

          sig do
            params(
              account: String,
              name: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # The name of your new list
            name:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
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
