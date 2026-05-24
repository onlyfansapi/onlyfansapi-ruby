# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Following#list_active
    class FollowingListActiveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfansapi::Models::FollowingListActiveParams::Filter, nil]
      optional :filter, -> { Onlyfansapi::FollowingListActiveParams::Filter }

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
      #   {Onlyfansapi::Models::FollowingListActiveParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Onlyfansapi::Models::FollowingListActiveParams::Filter]
      #
      #   @param limit [Integer] Number of followings to return (1-50). Must be at least 1. Must not be greater t
      #
      #   @param offset [Integer] Pagination offset. Must be at least 0.
      #
      #   @param query [String, nil] Search within following name/username.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute online
        #   Filter by online status (1 for online, 0 for offline, null for all).
        #
        #   @return [Integer, Onlyfansapi::Models::FollowingListActiveParams::Filter::Online, nil]
        optional :online, enum: -> { Onlyfansapi::FollowingListActiveParams::Filter::Online }, nil?: true

        # @!attribute paid
        #   Filter by paid status (1 for paid, 0 for free, null for all).
        #
        #   @return [Integer, Onlyfansapi::Models::FollowingListActiveParams::Filter::Paid, nil]
        optional :paid, enum: -> { Onlyfansapi::FollowingListActiveParams::Filter::Paid }, nil?: true

        # @!method initialize(online: nil, paid: nil)
        #   @param online [Integer, Onlyfansapi::Models::FollowingListActiveParams::Filter::Online, nil] Filter by online status (1 for online, 0 for offline, null for all).
        #
        #   @param paid [Integer, Onlyfansapi::Models::FollowingListActiveParams::Filter::Paid, nil] Filter by paid status (1 for paid, 0 for free, null for all).

        # Filter by online status (1 for online, 0 for offline, null for all).
        #
        # @see Onlyfansapi::Models::FollowingListActiveParams::Filter#online
        module Online
          extend Onlyfansapi::Internal::Type::Enum

          ONLINE_1 = 1
          ONLINE_0 = 0

          # @!method self.values
          #   @return [Array<Integer>]
        end

        # Filter by paid status (1 for paid, 0 for free, null for all).
        #
        # @see Onlyfansapi::Models::FollowingListActiveParams::Filter#paid
        module Paid
          extend Onlyfansapi::Internal::Type::Enum

          PAID_1 = 1
          PAID_0 = 0

          # @!method self.values
          #   @return [Array<Integer>]
        end
      end
    end
  end
end
