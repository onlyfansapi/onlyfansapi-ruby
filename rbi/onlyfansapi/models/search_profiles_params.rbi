# typed: strong

module Onlyfansapi
  module Models
    class SearchProfilesParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::SearchProfilesParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      # Query for full text search in username, display name, bio
      sig { returns(String) }
      attr_accessor :query

      # The number of profiles to return. For each returned profile we charge your
      # account 1 credit. Default: `10`
      sig { returns(T.nilable(String)) }
      attr_reader :limit

      sig { params(limit: String).void }
      attr_writer :limit

      # Location
      sig { returns(T.nilable(String)) }
      attr_reader :location

      sig { params(location: String).void }
      attr_writer :location

      # Maximum subscribe price
      sig { returns(T.nilable(String)) }
      attr_reader :max_subscribe_price

      sig { params(max_subscribe_price: String).void }
      attr_writer :max_subscribe_price

      # Minimum subscribe price
      sig { returns(T.nilable(String)) }
      attr_reader :min_subscribe_price

      sig { params(min_subscribe_price: String).void }
      attr_writer :min_subscribe_price

      sig do
        params(
          query: String,
          limit: String,
          location: String,
          max_subscribe_price: String,
          min_subscribe_price: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Query for full text search in username, display name, bio
        query:,
        # The number of profiles to return. For each returned profile we charge your
        # account 1 credit. Default: `10`
        limit: nil,
        # Location
        location: nil,
        # Maximum subscribe price
        max_subscribe_price: nil,
        # Minimum subscribe price
        min_subscribe_price: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            query: String,
            limit: String,
            location: String,
            max_subscribe_price: String,
            min_subscribe_price: String,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
