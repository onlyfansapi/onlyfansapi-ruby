# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Fans#list_active
    class FanListActiveParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfans::Models::FanListActiveParams::Filter, nil]
      optional :filter, -> { Onlyfans::FanListActiveParams::Filter }

      # @!attribute limit
      #   Number of fans to return (1-50). Must be at least 1. Must not be greater
      #   than 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Number of fans to skip. Must be at least 0.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute query
      #   Search within fan name/username.
      #
      #   @return [String, nil]
      optional :query, String, nil?: true

      # @!attribute type
      #   Filter by fan type.
      #
      #   @return [Symbol, Onlyfans::Models::FanListActiveParams::Type, nil]
      optional :type, enum: -> { Onlyfans::FanListActiveParams::Type }

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::FanListActiveParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Onlyfans::Models::FanListActiveParams::Filter]
      #
      #   @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      #   @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      #   @param query [String, nil] Search within fan name/username.
      #
      #   @param type [Symbol, Onlyfans::Models::FanListActiveParams::Type] Filter by fan type.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfans::Internal::Type::BaseModel
        # @!attribute duration
        #   Filter by minimum subscription duration in months. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute online
        #   Filter by online status (`1` for online fans).
        #
        #   @return [Integer, Onlyfans::Models::FanListActiveParams::Filter::Online, nil]
        optional :online, enum: -> { Onlyfans::FanListActiveParams::Filter::Online }, nil?: true

        # @!attribute tips
        #   Filter by minimum tips. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :tips, Integer

        # @!attribute total_spent
        #   Filter by minimum amount total spent by a fan. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :total_spent, Integer

        # @!method initialize(duration: nil, online: nil, tips: nil, total_spent: nil)
        #   @param duration [Integer] Filter by minimum subscription duration in months. Must be at least 0.
        #
        #   @param online [Integer, Onlyfans::Models::FanListActiveParams::Filter::Online, nil] Filter by online status (`1` for online fans).
        #
        #   @param tips [Integer] Filter by minimum tips. Must be at least 0.
        #
        #   @param total_spent [Integer] Filter by minimum amount total spent by a fan. Must be at least 0.

        # Filter by online status (`1` for online fans).
        #
        # @see Onlyfans::Models::FanListActiveParams::Filter#online
        module Online
          extend Onlyfans::Internal::Type::Enum

          ONLINE_1 = 1
          ONLINE_0 = 0

          # @!method self.values
          #   @return [Array<Integer>]
        end
      end

      # Filter by fan type.
      module Type
        extend Onlyfans::Internal::Type::Enum

        ACTIVE = :active
        EXPIRED = :expired
        ALL = :all

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
