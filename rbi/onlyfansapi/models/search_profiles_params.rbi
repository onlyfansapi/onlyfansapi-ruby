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

      # Cursor for pagination. Use the `next_cursor` from the previous response to get
      # the next page of results.
      sig { returns(T.nilable(String)) }
      attr_accessor :cursor

      sig { returns(T.nilable(Onlyfansapi::SearchProfilesParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Onlyfansapi::SearchProfilesParams::Filter::OrHash).void
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
      sig do
        returns(T.nilable(Onlyfansapi::SearchProfilesParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Onlyfansapi::SearchProfilesParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      # Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      sig do
        returns(
          T.nilable(Onlyfansapi::SearchProfilesParams::SortDirection::OrSymbol)
        )
      end
      attr_reader :sort_direction

      sig do
        params(
          sort_direction:
            Onlyfansapi::SearchProfilesParams::SortDirection::OrSymbol
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
            filter: Onlyfansapi::SearchProfilesParams::Filter,
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
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::SearchProfilesParams::Filter,
              Onlyfansapi::Internal::AnyHash
            )
          end

        # Filter by gender (available: `female`, `male`, `trans`, `trans_ftm`
        # (Female-to-Male), `trans_mft` (Male-to-Female), `couple`). ⭐️ Only available on
        # the Pro and Enterprise plan.
        sig do
          returns(
            T.nilable(
              Onlyfansapi::SearchProfilesParams::Filter::Gender::OrSymbol
            )
          )
        end
        attr_reader :gender

        sig do
          params(
            gender: Onlyfansapi::SearchProfilesParams::Filter::Gender::OrSymbol
          ).void
        end
        attr_writer :gender

        sig do
          params(
            gender: Onlyfansapi::SearchProfilesParams::Filter::Gender::OrSymbol
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
            {
              gender:
                Onlyfansapi::SearchProfilesParams::Filter::Gender::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter by gender (available: `female`, `male`, `trans`, `trans_ftm`
        # (Female-to-Male), `trans_mft` (Male-to-Female), `couple`). ⭐️ Only available on
        # the Pro and Enterprise plan.
        module Gender
          extend Onlyfansapi::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Onlyfansapi::SearchProfilesParams::Filter::Gender)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FEMALE =
            T.let(
              :female,
              Onlyfansapi::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          MALE =
            T.let(
              :male,
              Onlyfansapi::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          TRANS =
            T.let(
              :trans,
              Onlyfansapi::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          TRANS_FTM =
            T.let(
              :trans_ftm,
              Onlyfansapi::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          TRANS_MTF =
            T.let(
              :trans_mtf,
              Onlyfansapi::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )
          COUPLE =
            T.let(
              :couple,
              Onlyfansapi::SearchProfilesParams::Filter::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Onlyfansapi::SearchProfilesParams::Filter::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Field to sort by. ⭐️ Only available on the Pro and Enterprise plan.
      module Sort
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::SearchProfilesParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIKES =
          T.let(:likes, Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol)
        PHOTOS =
          T.let(:photos, Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol)
        VIDEOS =
          T.let(:videos, Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol)
        SUBSCRIBERS =
          T.let(
            :subscribers,
            Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol
          )
        SUBSCRIBE_PRICE =
          T.let(
            :subscribe_price,
            Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol
          )
        MIN_SUBSCRIBE_PRICE =
          T.let(
            :min_subscribe_price,
            Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol
          )
        JOIN_DATE =
          T.let(
            :join_date,
            Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol
          )
        LAST_SEEN =
          T.let(
            :last_seen,
            Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::SearchProfilesParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Direction for sorting. `desc` - highest value first. `asc` - lowest value first.
      module SortDirection
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::SearchProfilesParams::SortDirection)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DESC =
          T.let(
            :desc,
            Onlyfansapi::SearchProfilesParams::SortDirection::TaggedSymbol
          )
        ASC =
          T.let(
            :asc,
            Onlyfansapi::SearchProfilesParams::SortDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::SearchProfilesParams::SortDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
