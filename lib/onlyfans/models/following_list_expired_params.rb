# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Following#list_expired
    class FollowingListExpiredParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfans::Models::FollowingListExpiredParams::Filter, nil]
      optional :filter, -> { Onlyfans::FollowingListExpiredParams::Filter }

      # @!attribute limit
      #   Number of followings to return (1-50). Must be at least 1. Must not be greater
      #   than 50.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Pagination offset. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute query
      #   Search within following name/username.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute sort
      #   Order the list by `last_activity` (the followed creator's last activity),
      #   `expire_date` (subscription expiry), `subscribe_date` (subscription start) or
      #   `is_expired` (expired first — OnlyFans only offers this one on the expired
      #   list). Omit it to keep whichever order is currently stored for the account.
      #   **Note:** OnlyFans persists this order account-wide, so it also applies to later
      #   requests that omit `sort` and to the creator's own onlyfans.com UI, until it is
      #   changed again. This field is required when <code>sortDirection</code> is
      #   present.
      #
      #   @return [Symbol, Onlyfans::Models::FollowingListExpiredParams::Sort, nil]
      optional :sort, enum: -> { Onlyfans::FollowingListExpiredParams::Sort }, nil?: true

      # @!attribute sort_direction
      #   Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      #
      #   @return [Symbol, Onlyfans::Models::FollowingListExpiredParams::SortDirection, nil]
      optional :sort_direction, enum: -> { Onlyfans::FollowingListExpiredParams::SortDirection }, nil?: true

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, query: nil, sort: nil, sort_direction: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::FollowingListExpiredParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Onlyfans::Models::FollowingListExpiredParams::Filter]
      #
      #   @param limit [Integer] Number of followings to return (1-50). Must be at least 1. Must not be greater t
      #
      #   @param offset [Integer] Pagination offset. Must be at least 0.
      #
      #   @param query [String, nil] Search within following name/username.
      #
      #   @param sort [Symbol, Onlyfans::Models::FollowingListExpiredParams::Sort, nil] Order the list by `last_activity` (the followed creator's last activity), `expir
      #
      #   @param sort_direction [Symbol, Onlyfans::Models::FollowingListExpiredParams::SortDirection, nil] Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfans::Internal::Type::BaseModel
        # @!attribute online
        #   Filter by online status (1 for online, 0 for offline, null for all).
        #
        #   @return [Integer, Onlyfans::Models::FollowingListExpiredParams::Filter::Online, nil]
        optional :online, enum: -> { Onlyfans::FollowingListExpiredParams::Filter::Online }, nil?: true

        # @!attribute paid
        #   Filter by paid status (1 for paid, 0 for free, null for all).
        #
        #   @return [Integer, Onlyfans::Models::FollowingListExpiredParams::Filter::Paid, nil]
        optional :paid, enum: -> { Onlyfans::FollowingListExpiredParams::Filter::Paid }, nil?: true

        # @!method initialize(online: nil, paid: nil)
        #   @param online [Integer, Onlyfans::Models::FollowingListExpiredParams::Filter::Online, nil] Filter by online status (1 for online, 0 for offline, null for all).
        #
        #   @param paid [Integer, Onlyfans::Models::FollowingListExpiredParams::Filter::Paid, nil] Filter by paid status (1 for paid, 0 for free, null for all).

        # Filter by online status (1 for online, 0 for offline, null for all).
        #
        # @see Onlyfans::Models::FollowingListExpiredParams::Filter#online
        module Online
          extend Onlyfans::Internal::Type::Enum

          ONLINE_1 = 1
          ONLINE_0 = 0

          # @!method self.values
          #   @return [Array<Integer>]
        end

        # Filter by paid status (1 for paid, 0 for free, null for all).
        #
        # @see Onlyfans::Models::FollowingListExpiredParams::Filter#paid
        module Paid
          extend Onlyfans::Internal::Type::Enum

          PAID_1 = 1
          PAID_0 = 0

          # @!method self.values
          #   @return [Array<Integer>]
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

        LAST_ACTIVITY = :last_activity
        EXPIRE_DATE = :expire_date
        SUBSCRIBE_DATE = :subscribe_date
        IS_EXPIRED = :is_expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
      module SortDirection
        extend Onlyfans::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
