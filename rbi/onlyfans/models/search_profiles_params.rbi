# typed: strong

module Onlyfans
  module Models
    class SearchProfilesParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::SearchProfilesParams, Onlyfans::Internal::AnyHash)
        end

      # Cursor for pagination. Use the `next_cursor` from the previous response to get
      # the next page of results.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(Onlyfans::SearchProfilesParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Onlyfans::SearchProfilesParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Filter by Instagram username.
      sig { returns(T.nilable(String)) }
      attr_reader :instagram

      sig { params(instagram: String).void }
      attr_writer :instagram

      # The number of profiles to return. For each returned profile we charge your
      # account 1 credit. Default: `10`. Must be at least 1. Must not be greater
      # than 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by location.
      sig { returns(T.nilable(String)) }
      attr_reader :location

      sig { params(location: String).void }
      attr_writer :location

      # Filter by maximum subscribe price. Must be at least 0.00.
      sig { returns(T.nilable(Float)) }
      attr_reader :max_subscribe_price

      sig { params(max_subscribe_price: Float).void }
      attr_writer :max_subscribe_price

      # Filter by minimum subscribe price. Must be at least 0.00.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_subscribe_price

      sig { params(min_subscribe_price: Float).void }
      attr_writer :min_subscribe_price

      # Query for full text search in username, display name, bio. Must be at least 3
      # characters.
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
      sig { returns(T.nilable(Onlyfans::SearchProfilesParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Onlyfans::SearchProfilesParams::Sort::OrSymbol).void }
      attr_writer :sort

      # Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      sig do
        returns(
          T.nilable(Onlyfans::SearchProfilesParams::SortDirection::OrSymbol)
        )
      end
      attr_reader :sort_direction

      sig do
        params(
          sort_direction:
            Onlyfans::SearchProfilesParams::SortDirection::OrSymbol
        ).void
      end
      attr_writer :sort_direction

      # Filter by TikTok username.
      sig { returns(T.nilable(String)) }
      attr_reader :tiktok

      sig { params(tiktok: String).void }
      attr_writer :tiktok

      # Filter by website.
      sig { returns(T.nilable(String)) }
      attr_reader :website

      sig { params(website: String).void }
      attr_writer :website

      sig do
        params(
          cursor: T.nilable(String),
          filter: Onlyfans::SearchProfilesParams::Filter::OrHash,
          instagram: String,
          limit: Integer,
          location: String,
          max_subscribe_price: Float,
          min_subscribe_price: Float,
          query: String,
          sort: Onlyfans::SearchProfilesParams::Sort::OrSymbol,
          sort_direction:
            Onlyfans::SearchProfilesParams::SortDirection::OrSymbol,
          tiktok: String,
          website: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            cursor: T.nilable(String),
            filter: Onlyfans::SearchProfilesParams::Filter,
            instagram: String,
            limit: Integer,
            location: String,
            max_subscribe_price: Float,
            min_subscribe_price: Float,
            query: String,
            sort: Onlyfans::SearchProfilesParams::Sort::OrSymbol,
            sort_direction:
              Onlyfans::SearchProfilesParams::SortDirection::OrSymbol,
            tiktok: String,
            website: String,
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
              Onlyfans::SearchProfilesParams::Filter,
              Onlyfans::Internal::AnyHash
            )
          end

        # Filter by gender (available: `female`, `male`, `trans`, `trans_ftm`
        # (Female-to-Male), `trans_mft` (Male-to-Female), `couple`). ⭐️ Only available on
        # the Pro and Enterprise plan.
        sig do
          returns(
            T.nilable(Onlyfans::SearchProfilesParams::Filter::Gender::OrSymbol)
          )
        end
        attr_reader :gender

        sig do
          params(
            gender: Onlyfans::SearchProfilesParams::Filter::Gender::OrSymbol
          ).void
        end
        attr_writer :gender

        sig do
          params(
            gender: Onlyfans::SearchProfilesParams::Filter::Gender::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by gender (available: `female`, `male`, `trans`, `trans_ftm`
          # (Female-to-Male), `trans_mft` (Male-to-Female), `couple`). ⭐️ Only available on
          # the Pro and Enterprise plan.
          gender: nil
        )
        end

        sig do
          override.returns(
            { gender: Onlyfans::SearchProfilesParams::Filter::Gender::OrSymbol }
          )
        end
        def to_hash
        end

        # Filter by gender (available: `female`, `male`, `trans`, `trans_ftm`
        # (Female-to-Male), `trans_mft` (Male-to-Female), `couple`). ⭐️ Only available on
        # the Pro and Enterprise plan.
        module Gender
          extend Onlyfans::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfans::SearchProfilesParams::Filter::Gender)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FEMALE =
            T.let(
              :female,
              Onlyfans::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          MALE =
            T.let(
              :male,
              Onlyfans::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          TRANS =
            T.let(
              :trans,
              Onlyfans::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          TRANS_FTM =
            T.let(
              :trans_ftm,
              Onlyfans::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          TRANS_MTF =
            T.let(
              :trans_mtf,
              Onlyfans::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          COUPLE =
            T.let(
              :couple,
              Onlyfans::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::SearchProfilesParams::Filter::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::SearchProfilesParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIKES =
          T.let(:likes, Onlyfans::SearchProfilesParams::Sort::TaggedSymbol)
        PHOTOS =
          T.let(:photos, Onlyfans::SearchProfilesParams::Sort::TaggedSymbol)
        VIDEOS =
          T.let(:videos, Onlyfans::SearchProfilesParams::Sort::TaggedSymbol)
        SUBSCRIBERS =
          T.let(
            :subscribers,
            Onlyfans::SearchProfilesParams::Sort::TaggedSymbol
          )
        SUBSCRIBE_PRICE =
          T.let(
            :subscribe_price,
            Onlyfans::SearchProfilesParams::Sort::TaggedSymbol
          )
        MIN_SUBSCRIBE_PRICE =
          T.let(
            :min_subscribe_price,
            Onlyfans::SearchProfilesParams::Sort::TaggedSymbol
          )
        JOIN_DATE =
          T.let(:join_date, Onlyfans::SearchProfilesParams::Sort::TaggedSymbol)
        LAST_SEEN =
          T.let(:last_seen, Onlyfans::SearchProfilesParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::SearchProfilesParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      module SortDirection
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::SearchProfilesParams::SortDirection)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESC =
          T.let(
            :desc,
            Onlyfans::SearchProfilesParams::SortDirection::TaggedSymbol
          )
        ASC =
          T.let(
            :asc,
            Onlyfans::SearchProfilesParams::SortDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::SearchProfilesParams::SortDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
