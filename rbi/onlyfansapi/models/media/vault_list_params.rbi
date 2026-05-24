# typed: strong

module Onlyfansapi
  module Models
    module Media
      class VaultListParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Media::VaultListParams,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account

        # Sort the results by a field. Default `recent`
        sig do
          returns(
            T.nilable(Onlyfansapi::Media::VaultListParams::Field::OrSymbol)
          )
        end
        attr_reader :field

        sig do
          params(
            field: Onlyfansapi::Media::VaultListParams::Field::OrSymbol
          ).void
        end
        attr_writer :field

        # Number of media to return per page (10 - 100). Default: `24`
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Only show media items from a specific list (category). **Refer to our Media
        # Vault Lists endpoints.**
        sig { returns(T.nilable(Integer)) }
        attr_reader :list

        sig { params(list: Integer).void }
        attr_writer :list

        # The offset used for pagination. Default `0`
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        # Optionally, search for a text query.
        sig { returns(T.nilable(String)) }
        attr_accessor :query

        # Sort the results. Default `desc`
        sig do
          returns(
            T.nilable(Onlyfansapi::Media::VaultListParams::Sort::OrSymbol)
          )
        end
        attr_reader :sort

        sig do
          params(sort: Onlyfansapi::Media::VaultListParams::Sort::OrSymbol).void
        end
        attr_writer :sort

        # Filter the results by a media type. Keep empty to show all media.
        sig do
          returns(
            T.nilable(Onlyfansapi::Media::VaultListParams::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: Onlyfansapi::Media::VaultListParams::Type::OrSymbol).void
        end
        attr_writer :type

        sig do
          params(
            account: String,
            field: Onlyfansapi::Media::VaultListParams::Field::OrSymbol,
            limit: Integer,
            list: Integer,
            offset: Integer,
            query: T.nilable(String),
            sort: Onlyfansapi::Media::VaultListParams::Sort::OrSymbol,
            type: Onlyfansapi::Media::VaultListParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account:,
          # Sort the results by a field. Default `recent`
          field: nil,
          # Number of media to return per page (10 - 100). Default: `24`
          limit: nil,
          # Only show media items from a specific list (category). **Refer to our Media
          # Vault Lists endpoints.**
          list: nil,
          # The offset used for pagination. Default `0`
          offset: nil,
          # Optionally, search for a text query.
          query: nil,
          # Sort the results. Default `desc`
          sort: nil,
          # Filter the results by a media type. Keep empty to show all media.
          type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account: String,
              field: Onlyfansapi::Media::VaultListParams::Field::OrSymbol,
              limit: Integer,
              list: Integer,
              offset: Integer,
              query: T.nilable(String),
              sort: Onlyfansapi::Media::VaultListParams::Sort::OrSymbol,
              type: Onlyfansapi::Media::VaultListParams::Type::OrSymbol,
              request_options: Onlyfansapi::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Sort the results by a field. Default `recent`
        module Field
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfansapi::Media::VaultListParams::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECENT =
            T.let(
              :recent,
              Onlyfansapi::Media::VaultListParams::Field::TaggedSymbol
            )
          MOST_LIKED =
            T.let(
              :"most-liked",
              Onlyfansapi::Media::VaultListParams::Field::TaggedSymbol
            )
          HIGHEST_TIPS =
            T.let(
              :"highest-tips",
              Onlyfansapi::Media::VaultListParams::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Onlyfansapi::Media::VaultListParams::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Sort the results. Default `desc`
        module Sort
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfansapi::Media::VaultListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DESC =
            T.let(
              :desc,
              Onlyfansapi::Media::VaultListParams::Sort::TaggedSymbol
            )
          ASC =
            T.let(:asc, Onlyfansapi::Media::VaultListParams::Sort::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Onlyfansapi::Media::VaultListParams::Sort::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Filter the results by a media type. Keep empty to show all media.
        module Type
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfansapi::Media::VaultListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHOTO =
            T.let(
              :photo,
              Onlyfansapi::Media::VaultListParams::Type::TaggedSymbol
            )
          GIF =
            T.let(:gif, Onlyfansapi::Media::VaultListParams::Type::TaggedSymbol)
          VIDEO =
            T.let(
              :video,
              Onlyfansapi::Media::VaultListParams::Type::TaggedSymbol
            )
          AUDIO =
            T.let(
              :audio,
              Onlyfansapi::Media::VaultListParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Onlyfansapi::Media::VaultListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
