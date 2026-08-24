# typed: strong

module Onlyfans
  module Models
    class FollowingListExpiredParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::FollowingListExpiredParams,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(T.nilable(Onlyfans::FollowingListExpiredParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Onlyfans::FollowingListExpiredParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Number of followings to return (1-50). Must be at least 1. Must not be greater
      # than 50.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Pagination offset. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Search within following name/username.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Order the list by `last_activity` (the followed creator's last activity),
      # `expire_date` (subscription expiry), `subscribe_date` (subscription start) or
      # `is_expired` (expired first — OnlyFans only offers this one on the expired
      # list). Omit it to keep whichever order is currently stored for the account.
      # **Note:** OnlyFans persists this order account-wide, so it also applies to later
      # requests that omit `sort` and to the creator's own onlyfans.com UI, until it is
      # changed again. This field is required when <code>sortDirection</code> is
      # present.
      sig do
        returns(T.nilable(Onlyfans::FollowingListExpiredParams::Sort::OrSymbol))
      end
      attr_accessor :sort

      # Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      sig do
        returns(
          T.nilable(
            Onlyfans::FollowingListExpiredParams::SortDirection::OrSymbol
          )
        )
      end
      attr_accessor :sort_direction

      sig do
        params(
          account: String,
          filter: Onlyfans::FollowingListExpiredParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          sort: T.nilable(Onlyfans::FollowingListExpiredParams::Sort::OrSymbol),
          sort_direction:
            T.nilable(
              Onlyfans::FollowingListExpiredParams::SortDirection::OrSymbol
            ),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # Number of followings to return (1-50). Must be at least 1. Must not be greater
        # than 50.
        limit: nil,
        # Pagination offset. Must be at least 0.
        offset: nil,
        # Search within following name/username.
        query: nil,
        # Order the list by `last_activity` (the followed creator's last activity),
        # `expire_date` (subscription expiry), `subscribe_date` (subscription start) or
        # `is_expired` (expired first — OnlyFans only offers this one on the expired
        # list). Omit it to keep whichever order is currently stored for the account.
        # **Note:** OnlyFans persists this order account-wide, so it also applies to later
        # requests that omit `sort` and to the creator's own onlyfans.com UI, until it is
        # changed again. This field is required when <code>sortDirection</code> is
        # present.
        sort: nil,
        # Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
        sort_direction: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfans::FollowingListExpiredParams::Filter,
            limit: Integer,
            offset: Integer,
            query: T.nilable(String),
            sort:
              T.nilable(Onlyfans::FollowingListExpiredParams::Sort::OrSymbol),
            sort_direction:
              T.nilable(
                Onlyfans::FollowingListExpiredParams::SortDirection::OrSymbol
              ),
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
              Onlyfans::FollowingListExpiredParams::Filter,
              Onlyfans::Internal::AnyHash
            )
          end

        # Filter by online status (1 for online, 0 for offline, null for all).
        sig do
          returns(
            T.nilable(
              Onlyfans::FollowingListExpiredParams::Filter::Online::OrInteger
            )
          )
        end
        attr_accessor :online

        # Filter by paid status (1 for paid, 0 for free, null for all).
        sig do
          returns(
            T.nilable(
              Onlyfans::FollowingListExpiredParams::Filter::Paid::OrInteger
            )
          )
        end
        attr_accessor :paid

        sig do
          params(
            online:
              T.nilable(
                Onlyfans::FollowingListExpiredParams::Filter::Online::OrInteger
              ),
            paid:
              T.nilable(
                Onlyfans::FollowingListExpiredParams::Filter::Paid::OrInteger
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by online status (1 for online, 0 for offline, null for all).
          online: nil,
          # Filter by paid status (1 for paid, 0 for free, null for all).
          paid: nil
        )
        end

        sig do
          override.returns(
            {
              online:
                T.nilable(
                  Onlyfans::FollowingListExpiredParams::Filter::Online::OrInteger
                ),
              paid:
                T.nilable(
                  Onlyfans::FollowingListExpiredParams::Filter::Paid::OrInteger
                )
            }
          )
        end
        def to_hash
        end

        # Filter by online status (1 for online, 0 for offline, null for all).
        module Online
          extend Onlyfans::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(
                Integer,
                Onlyfans::FollowingListExpiredParams::Filter::Online
              )
            end
          OrInteger = T.type_alias { Integer }

          ONLINE_1 =
            T.let(
              1,
              Onlyfans::FollowingListExpiredParams::Filter::Online::TaggedInteger
            )
          ONLINE_0 =
            T.let(
              0,
              Onlyfans::FollowingListExpiredParams::Filter::Online::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::FollowingListExpiredParams::Filter::Online::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end

        # Filter by paid status (1 for paid, 0 for free, null for all).
        module Paid
          extend Onlyfans::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(Integer, Onlyfans::FollowingListExpiredParams::Filter::Paid)
            end
          OrInteger = T.type_alias { Integer }

          PAID_1 =
            T.let(
              1,
              Onlyfans::FollowingListExpiredParams::Filter::Paid::TaggedInteger
            )
          PAID_0 =
            T.let(
              0,
              Onlyfans::FollowingListExpiredParams::Filter::Paid::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::FollowingListExpiredParams::Filter::Paid::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end
      end

      # Order the list by `last_activity` (the followed creator's last activity),
      # `expire_date` (subscription expiry), `subscribe_date` (subscription start) or
      # `is_expired` (expired first — OnlyFans only offers this one on the expired
      # list). Omit it to keep whichever order is currently stored for the account.
      # **Note:** OnlyFans persists this order account-wide, so it also applies to later
      # requests that omit `sort` and to the creator's own onlyfans.com UI, until it is
      # changed again. This field is required when <code>sortDirection</code> is
      # present.
      module Sort
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::FollowingListExpiredParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LAST_ACTIVITY =
          T.let(
            :last_activity,
            Onlyfans::FollowingListExpiredParams::Sort::TaggedSymbol
          )
        EXPIRE_DATE =
          T.let(
            :expire_date,
            Onlyfans::FollowingListExpiredParams::Sort::TaggedSymbol
          )
        SUBSCRIBE_DATE =
          T.let(
            :subscribe_date,
            Onlyfans::FollowingListExpiredParams::Sort::TaggedSymbol
          )
        IS_EXPIRED =
          T.let(
            :is_expired,
            Onlyfans::FollowingListExpiredParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::FollowingListExpiredParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      module SortDirection
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::FollowingListExpiredParams::SortDirection)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(
            :asc,
            Onlyfans::FollowingListExpiredParams::SortDirection::TaggedSymbol
          )
        DESC =
          T.let(
            :desc,
            Onlyfans::FollowingListExpiredParams::SortDirection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfans::FollowingListExpiredParams::SortDirection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
