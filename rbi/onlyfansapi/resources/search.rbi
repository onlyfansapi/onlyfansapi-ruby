# typed: strong

module Onlyfansapi
  module Resources
    class Search
      # Full-text search for profiles with filters for pricing, free trials, location,
      # media count and more.
      sig do
        params(
          query: String,
          limit: String,
          location: String,
          max_subscribe_price: String,
          min_subscribe_price: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SearchProfilesResponse)
      end
      def profiles(
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

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
