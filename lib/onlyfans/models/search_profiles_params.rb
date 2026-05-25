# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Search#profiles
    class SearchProfilesParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute cursor
      #   Cursor for pagination. Use the `next_cursor` from the previous response to get
      #   the next page of results.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute filter
      #
      #   @return [Onlyfans::Models::SearchProfilesParams::Filter, nil]
      optional :filter, -> { Onlyfans::SearchProfilesParams::Filter }

      # @!attribute instagram
      #   Filter by Instagram username.
      #
      #   @return [String, nil]
      optional :instagram, String

      # @!attribute limit
      #   The number of profiles to return. For each returned profile we charge your
      #   account 1 credit. Default: `10`. Must be at least 1. Must not be greater
      #   than 100.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute location
      #   Filter by location.
      #
      #   @return [String, nil]
      optional :location, String

      # @!attribute max_subscribe_price
      #   Filter by maximum subscribe price. Must be at least 0.00.
      #
      #   @return [Float, nil]
      optional :max_subscribe_price, Float

      # @!attribute min_subscribe_price
      #   Filter by minimum subscribe price. Must be at least 0.00.
      #
      #   @return [Float, nil]
      optional :min_subscribe_price, Float

      # @!attribute query
      #   Query for full text search in username, display name, bio. Must be at least 3
      #   characters.
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute sort
      #   Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
      #
      #   @return [Symbol, Onlyfans::Models::SearchProfilesParams::Sort, nil]
      optional :sort, enum: -> { Onlyfans::SearchProfilesParams::Sort }

      # @!attribute sort_direction
      #   Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      #
      #   @return [Symbol, Onlyfans::Models::SearchProfilesParams::SortDirection, nil]
      optional :sort_direction, enum: -> { Onlyfans::SearchProfilesParams::SortDirection }

      # @!attribute tiktok
      #   Filter by TikTok username.
      #
      #   @return [String, nil]
      optional :tiktok, String

      # @!attribute website
      #   Filter by website.
      #
      #   @return [String, nil]
      optional :website, String

      # @!method initialize(cursor: nil, filter: nil, instagram: nil, limit: nil, location: nil, max_subscribe_price: nil, min_subscribe_price: nil, query: nil, sort: nil, sort_direction: nil, tiktok: nil, website: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::SearchProfilesParams} for more details.
      #
      #   @param cursor [String, nil] Cursor for pagination. Use the `next_cursor` from the previous response to get t
      #
      #   @param filter [Onlyfans::Models::SearchProfilesParams::Filter]
      #
      #   @param instagram [String] Filter by Instagram username.
      #
      #   @param limit [Integer] The number of profiles to return. For each returned profile we charge your accou
      #
      #   @param location [String] Filter by location.
      #
      #   @param max_subscribe_price [Float] Filter by maximum subscribe price. Must be at least 0.00.
      #
      #   @param min_subscribe_price [Float] Filter by minimum subscribe price. Must be at least 0.00.
      #
      #   @param query [String] Query for full text search in username, display name, bio. Must be at least 3 ch
      #
      #   @param sort [Symbol, Onlyfans::Models::SearchProfilesParams::Sort] Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
      #
      #   @param sort_direction [Symbol, Onlyfans::Models::SearchProfilesParams::SortDirection] Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      #
      #   @param tiktok [String] Filter by TikTok username.
      #
      #   @param website [String] Filter by website.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfans::Internal::Type::BaseModel
        # @!attribute gender
        #   Filter by gender (available: `female`, `male`, `trans`, `trans_ftm`
        #   (Female-to-Male), `trans_mft` (Male-to-Female), `couple`). ⭐️ Only available on
        #   the Pro and Enterprise plan.
        #
        #   @return [Symbol, Onlyfans::Models::SearchProfilesParams::Filter::Gender, nil]
        optional :gender, enum: -> { Onlyfans::SearchProfilesParams::Filter::Gender }

        # @!method initialize(gender: nil)
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::SearchProfilesParams::Filter} for more details.
        #
        #   @param gender [Symbol, Onlyfans::Models::SearchProfilesParams::Filter::Gender] Filter by gender (available: `female`, `male`, `trans`, `trans_ftm` (Female-to-M

        # Filter by gender (available: `female`, `male`, `trans`, `trans_ftm`
        # (Female-to-Male), `trans_mft` (Male-to-Female), `couple`). ⭐️ Only available on
        # the Pro and Enterprise plan.
        #
        # @see Onlyfans::Models::SearchProfilesParams::Filter#gender
        module Gender
          extend Onlyfans::Internal::Type::Enum

          FEMALE = :female
          MALE = :male
          TRANS = :trans
          TRANS_FTM = :trans_ftm
          TRANS_MTF = :trans_mtf
          COUPLE = :couple

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        LIKES = :likes
        PHOTOS = :photos
        VIDEOS = :videos
        SUBSCRIBERS = :subscribers
        SUBSCRIBE_PRICE = :subscribe_price
        MIN_SUBSCRIBE_PRICE = :min_subscribe_price
        JOIN_DATE = :join_date
        LAST_SEEN = :last_seen

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      module SortDirection
        extend Onlyfans::Internal::Type::Enum

        DESC = :desc
        ASC = :asc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
