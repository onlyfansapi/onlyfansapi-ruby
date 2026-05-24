# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SmartLinkListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # Comma-separated account prefixed IDs to include.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_ids

      # The number of Smart Links to return. Default `50`. Must be at least 1. Must not
      # be greater than 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Comma-separated Meta Pixel IDs to include.
      sig { returns(T.nilable(String)) }
      attr_accessor :meta_pixel_ids

      # Filter Smart Links by name. Must not be greater than 255 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The offset used for pagination. Default `0`. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account_ids: T.nilable(String),
          limit: Integer,
          meta_pixel_ids: T.nilable(String),
          name: T.nilable(String),
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Comma-separated account prefixed IDs to include.
        account_ids: nil,
        # The number of Smart Links to return. Default `50`. Must be at least 1. Must not
        # be greater than 1000.
        limit: nil,
        # Comma-separated Meta Pixel IDs to include.
        meta_pixel_ids: nil,
        # Filter Smart Links by name. Must not be greater than 255 characters.
        name: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_ids: T.nilable(String),
            limit: Integer,
            meta_pixel_ids: T.nilable(String),
            name: T.nilable(String),
            offset: Integer,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
