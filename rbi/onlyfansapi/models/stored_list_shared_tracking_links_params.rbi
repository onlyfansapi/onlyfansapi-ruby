# typed: strong

module Onlyfansapi
  module Models
    class StoredListSharedTrackingLinksParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::StoredListSharedTrackingLinksParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Search campaign name, owner username, or a pasted OnlyFans tracking link URL.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_search

      sig { params(filter_search: String).void }
      attr_writer :filter_search

      # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
      # (`filter[tags][]=...`) and matches any tag. Tag namespace is shared with owned
      # Tracking Links.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_tags

      sig { params(filter_tags: String).void }
      attr_writer :filter_tags

      # The number of shared tracking links to return. Default `10`
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
          filter_search: String,
          filter_tags: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Search campaign name, owner username, or a pasted OnlyFans tracking link URL.
        filter_search: nil,
        # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
        # (`filter[tags][]=...`) and matches any tag. Tag namespace is shared with owned
        # Tracking Links.
        filter_tags: nil,
        # The number of shared tracking links to return. Default `10`
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
