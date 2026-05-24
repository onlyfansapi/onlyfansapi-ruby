# typed: strong

module Onlyfansapi
  module Models
    module Media
      module Vault
        class ListListParams < Onlyfansapi::Internal::Type::BaseModel
          extend Onlyfansapi::Internal::Type::RequestParameters::Converter
          include Onlyfansapi::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Media::Vault::ListListParams,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # Number of media to return per page. Default: `24`
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # The offset used for pagination. Default `0`
          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          # Optionally, find a list by its name.
          sig { returns(T.nilable(String)) }
          attr_reader :query

          sig { params(query: String).void }
          attr_writer :query

          sig do
            params(
              account: String,
              limit: Integer,
              offset: Integer,
              query: String,
              request_options: Onlyfansapi::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # Number of media to return per page. Default: `24`
            limit: nil,
            # The offset used for pagination. Default `0`
            offset: nil,
            # Optionally, find a list by its name.
            query: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account: String,
                limit: Integer,
                offset: Integer,
                query: String,
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
