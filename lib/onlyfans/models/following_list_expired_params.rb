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

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, query: nil, request_options: {})
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
    end
  end
end
