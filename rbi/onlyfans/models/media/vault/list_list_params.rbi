# typed: strong

module Onlyfans
  module Models
    module Media
      module Vault
        class ListListParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Media::Vault::ListListParams,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account

          # Set to `true` to return only `id`, `name`, `type`, `canUpdate` and a rolled-up
          # `mediaCount` per list, dropping the `medias` previews. Much smaller payload —
          # ideal for rendering a folder picker. Default: `false`
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :lightweight

          sig { params(lightweight: T::Boolean).void }
          attr_writer :lightweight

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
              lightweight: T::Boolean,
              limit: Integer,
              offset: Integer,
              query: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account:,
            # Set to `true` to return only `id`, `name`, `type`, `canUpdate` and a rolled-up
            # `mediaCount` per list, dropping the `medias` previews. Much smaller payload —
            # ideal for rendering a folder picker. Default: `false`
            lightweight: nil,
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
                lightweight: T::Boolean,
                limit: Integer,
                offset: Integer,
                query: String,
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
