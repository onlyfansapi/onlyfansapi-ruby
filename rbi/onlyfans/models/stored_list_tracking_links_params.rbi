# typed: strong

module Onlyfans
  module Models
    class StoredListTrackingLinksParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::StoredListTrackingLinksParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig do
        returns(T.nilable(Onlyfans::StoredListTrackingLinksParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Onlyfans::StoredListTrackingLinksParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # The number of tracking links to return. Default `10`. Must be at least 1. Must
      # not be greater than 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          filter: Onlyfans::StoredListTrackingLinksParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # The number of tracking links to return. Default `10`. Must be at least 1. Must
        # not be greater than 1000.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfans::StoredListTrackingLinksParams::Filter,
            limit: Integer,
            offset: Integer,
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
              Onlyfans::StoredListTrackingLinksParams::Filter,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_smart_links

        sig { params(include_smart_links: T::Boolean).void }
        attr_writer :include_smart_links

        # Must not be greater than 255 characters.
        sig { returns(T.nilable(String)) }
        attr_accessor :search

        # Must not be greater than 50 characters.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig do
          params(
            include_smart_links: T::Boolean,
            search: T.nilable(String),
            tags: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          include_smart_links: nil,
          # Must not be greater than 255 characters.
          search: nil,
          # Must not be greater than 50 characters.
          tags: nil
        )
        end

        sig do
          override.returns(
            {
              include_smart_links: T::Boolean,
              search: T.nilable(String),
              tags: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
