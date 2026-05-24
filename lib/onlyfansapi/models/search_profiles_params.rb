# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Search#profiles
    class SearchProfilesParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute query
      #   Query for full text search in username, display name, bio
      #
      #   @return [String]
      required :query, String

      # @!attribute limit
      #   The number of profiles to return. For each returned profile we charge your
      #   account 1 credit. Default: `10`
      #
      #   @return [String, nil]
      optional :limit, String

      # @!attribute location
      #   Location
      #
      #   @return [String, nil]
      optional :location, String

      # @!attribute max_subscribe_price
      #   Maximum subscribe price
      #
      #   @return [String, nil]
      optional :max_subscribe_price, String

      # @!attribute min_subscribe_price
      #   Minimum subscribe price
      #
      #   @return [String, nil]
      optional :min_subscribe_price, String

      # @!method initialize(query:, limit: nil, location: nil, max_subscribe_price: nil, min_subscribe_price: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::SearchProfilesParams} for more details.
      #
      #   @param query [String] Query for full text search in username, display name, bio
      #
      #   @param limit [String] The number of profiles to return. For each returned profile we charge your accou
      #
      #   @param location [String] Location
      #
      #   @param max_subscribe_price [String] Maximum subscribe price
      #
      #   @param min_subscribe_price [String] Minimum subscribe price
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
