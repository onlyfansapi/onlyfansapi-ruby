# typed: strong

module Onlyfans
  module Models
    class SmartLinkListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::SmartLinkListParams, Onlyfans::Internal::AnyHash)
        end

      # Comma-separated account prefixed IDs to include.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_ids

      sig { returns(T.nilable(Onlyfans::SmartLinkListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Onlyfans::SmartLinkListParams::Filter::OrHash).void }
      attr_writer :filter

      # The number of Smart Links to return. Default `50`. Must be at least 1. Must not
      # be greater than 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter Smart Links by name. Must not be greater than 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The offset used for pagination. Default `0`. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Comma-separated ad platform Pixel IDs to include.
      sig { returns(T.nilable(String)) }
      attr_accessor :pixel_ids

      sig do
        params(
          account_ids: T.nilable(String),
          filter: Onlyfans::SmartLinkListParams::Filter::OrHash,
          limit: Integer,
          name: T.nilable(String),
          offset: Integer,
          pixel_ids: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Comma-separated account prefixed IDs to include.
        account_ids: nil,
        filter: nil,
        # The number of Smart Links to return. Default `50`. Must be at least 1. Must not
        # be greater than 1000.
        limit: nil,
        # Filter Smart Links by name. Must not be greater than 255 characters.
        name: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        # Comma-separated ad platform Pixel IDs to include.
        pixel_ids: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_ids: T.nilable(String),
            filter: Onlyfans::SmartLinkListParams::Filter,
            limit: Integer,
            name: T.nilable(String),
            offset: Integer,
            pixel_ids: T.nilable(String),
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::SmartLinkListParams::Filter,
              Onlyfans::Internal::AnyHash
            )
          end

        # Must not be greater than 50 characters.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig { params(tags: T::Array[String]).returns(T.attached_class) }
        def self.new(
          # Must not be greater than 50 characters.
          tags: nil
        )
        end

        sig { override.returns({ tags: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
