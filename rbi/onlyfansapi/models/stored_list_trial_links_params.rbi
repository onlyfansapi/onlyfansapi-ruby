# typed: strong

module Onlyfansapi
  module Models
    class StoredListTrialLinksParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::StoredListTrialLinksParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Include trial links created by Smart Links. Default `false`
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :filter_include_smart_links

      sig { params(filter_include_smart_links: T::Boolean).void }
      attr_writer :filter_include_smart_links

      # Search trial link name or URL.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_search

      sig { params(filter_search: String).void }
      attr_writer :filter_search

      # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
      # (`filter[tags][]=...`) and matches any tag.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_tags

      sig { params(filter_tags: String).void }
      attr_writer :filter_tags

      # The number of trial links to return. Default `10`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # The offset used for pagination. Default `0`
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      sig do
        params(
          account: String,
          filter_include_smart_links: T::Boolean,
          filter_search: String,
          filter_tags: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Include trial links created by Smart Links. Default `false`
        filter_include_smart_links: nil,
        # Search trial link name or URL.
        filter_search: nil,
        # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
        # (`filter[tags][]=...`) and matches any tag.
        filter_tags: nil,
        # The number of trial links to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter_include_smart_links: T::Boolean,
            filter_search: String,
            filter_tags: String,
            limit: Integer,
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
