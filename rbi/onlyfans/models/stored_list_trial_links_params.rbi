# typed: strong

module Onlyfans
  module Models
    class StoredListTrialLinksParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::StoredListTrialLinksParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(T.nilable(Onlyfans::StoredListTrialLinksParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Onlyfans::StoredListTrialLinksParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # The number of trial links to return. Default `10`. Must be at least 1. Must not
      # be greater than 1000.
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
          filter: Onlyfans::StoredListTrialLinksParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # The number of trial links to return. Default `10`. Must be at least 1. Must not
        # be greater than 1000.
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
            filter: Onlyfans::StoredListTrialLinksParams::Filter,
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
              Onlyfans::StoredListTrialLinksParams::Filter,
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
