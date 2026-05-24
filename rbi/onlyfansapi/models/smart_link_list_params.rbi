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
      attr_reader :account_ids

      sig { params(account_ids: String).void }
      attr_writer :account_ids

      # The number of Smart Links to return. Default `50`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Comma-separated Meta Pixel IDs to include.
      sig { returns(T.nilable(String)) }
      attr_reader :meta_pixel_ids

      sig { params(meta_pixel_ids: String).void }
      attr_writer :meta_pixel_ids

      # Filter Smart Links by name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The offset used for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account_ids: String,
          limit: Integer,
          meta_pixel_ids: String,
          name: String,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Comma-separated account prefixed IDs to include.
        account_ids: nil,
        # The number of Smart Links to return. Default `50`
        limit: nil,
        # Comma-separated Meta Pixel IDs to include.
        meta_pixel_ids: nil,
        # Filter Smart Links by name.
        name: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_ids: String,
            limit: Integer,
            meta_pixel_ids: String,
            name: String,
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
