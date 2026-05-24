# typed: strong

module Onlyfansapi
  module Resources
    class Search
      # Full-text search for profiles with filters for pricing, free trials, location,
      # media count and more.
      sig do
        params(
          cursor: T.nilable(String),
          filter: Onlyfansapi::SearchProfilesParams::Filter::OrHash,
          instagram: String,
          limit: Integer,
          location: String,
          max_subscribe_price: Float,
          min_subscribe_price: Float,
          query: String,
          sort: Onlyfansapi::SearchProfilesParams::Sort::OrSymbol,
          sort_direction:
            Onlyfansapi::SearchProfilesParams::SortDirection::OrSymbol,
          tiktok: String,
          website: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::SearchProfilesResponse)
      end
      def profiles(
        # Cursor for pagination. Use the `next_cursor` from the previous response to get
        # the next page of results.
        cursor: nil,
        filter: nil,
        # Filter by Instagram username.
        instagram: nil,
        # The number of profiles to return. For each returned profile we charge your
        # account 1 credit. Default: `10`. Must be at least 1. Must not be greater
        # than 100.
        limit: nil,
        # Filter by location.
        location: nil,
        # Filter by maximum subscribe price. Must be at least 0.00.
        max_subscribe_price: nil,
        # Filter by minimum subscribe price. Must be at least 0.00.
        min_subscribe_price: nil,
        # Query for full text search in username, display name, bio. Must be at least 3
        # characters.
        query: nil,
        # Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
        sort: nil,
        # Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
        sort_direction: nil,
        # Filter by TikTok username.
        tiktok: nil,
        # Filter by website.
        website: nil,
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
