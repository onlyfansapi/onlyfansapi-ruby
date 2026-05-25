# typed: strong

module Onlyfans
  module Models
    module Media
      class VaultListParams < Onlyfans::Internal::Type::BaseModel
        extend Onlyfans::Internal::Type::RequestParameters::Converter
        include Onlyfans::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Onlyfans::Media::VaultListParams, Onlyfans::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :account

        # Sort the results by a field. Default `recent`
        sig do
          returns(T.nilable(Onlyfans::Media::VaultListParams::Field::OrSymbol))
        end
        attr_reader :field

        sig do
          params(field: Onlyfans::Media::VaultListParams::Field::OrSymbol).void
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
          returns(T.nilable(Onlyfans::Media::VaultListParams::Sort::OrSymbol))
        end
        attr_reader :sort

        sig do
          params(sort: Onlyfans::Media::VaultListParams::Sort::OrSymbol).void
        end
        attr_writer :sort

        # Filter the results by a media type. Keep empty to show all media.
        sig do
          returns(T.nilable(Onlyfans::Media::VaultListParams::Type::OrSymbol))
        end
        attr_reader :type

        sig do
          params(type: Onlyfans::Media::VaultListParams::Type::OrSymbol).void
        end
        attr_writer :type

        sig do
          params(
            account: String,
            field: Onlyfans::Media::VaultListParams::Field::OrSymbol,
            limit: Integer,
            list: Integer,
            offset: Integer,
            query: T.nilable(String),
            sort: Onlyfans::Media::VaultListParams::Sort::OrSymbol,
            type: Onlyfans::Media::VaultListParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions::OrHash
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
              field: Onlyfans::Media::VaultListParams::Field::OrSymbol,
              limit: Integer,
              list: Integer,
              offset: Integer,
              query: T.nilable(String),
              sort: Onlyfans::Media::VaultListParams::Sort::OrSymbol,
              type: Onlyfans::Media::VaultListParams::Type::OrSymbol,
              request_options: Onlyfans::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Sort the results by a field. Default `recent`
        module Field
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::Media::VaultListParams::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECENT =
            T.let(
              :recent,
              Onlyfans::Media::VaultListParams::Field::TaggedSymbol
            )
          MOST_LIKED =
            T.let(
              :"most-liked",
              Onlyfans::Media::VaultListParams::Field::TaggedSymbol
            )
          HIGHEST_TIPS =
            T.let(
              :"highest-tips",
              Onlyfans::Media::VaultListParams::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Onlyfans::Media::VaultListParams::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Sort the results. Default `desc`
        module Sort
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::Media::VaultListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DESC =
            T.let(:desc, Onlyfans::Media::VaultListParams::Sort::TaggedSymbol)
          ASC =
            T.let(:asc, Onlyfans::Media::VaultListParams::Sort::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Onlyfans::Media::VaultListParams::Sort::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Filter the results by a media type. Keep empty to show all media.
        module Type
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::Media::VaultListParams::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHOTO =
            T.let(:photo, Onlyfans::Media::VaultListParams::Type::TaggedSymbol)
          GIF =
            T.let(:gif, Onlyfans::Media::VaultListParams::Type::TaggedSymbol)
          VIDEO =
            T.let(:video, Onlyfans::Media::VaultListParams::Type::TaggedSymbol)
          AUDIO =
            T.let(:audio, Onlyfans::Media::VaultListParams::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Onlyfans::Media::VaultListParams::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
