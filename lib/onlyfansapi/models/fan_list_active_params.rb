# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Fans#list_active
    class FanListActiveParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfansapi::Models::FanListActiveParams::Filter, nil]
      optional :filter, -> { Onlyfansapi::FanListActiveParams::Filter }

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
      #   @return [Symbol, Onlyfansapi::Models::FanListActiveParams::Type, nil]
      optional :type, enum: -> { Onlyfansapi::FanListActiveParams::Type }

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfansapi::Models::FanListActiveParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Onlyfansapi::Models::FanListActiveParams::Filter]
      #
      #   @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      #   @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      #   @param query [String, nil] Search within fan name/username.
      #
      #   @param type [Symbol, Onlyfansapi::Models::FanListActiveParams::Type] Filter by fan type.
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute duration
        #   Filter by minimum subscription duration in months. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute online
        #   Filter by online status (`1` for online fans).
        #
        #   @return [Integer, Onlyfansapi::Models::FanListActiveParams::Filter::Online, nil]
        optional :online, enum: -> { Onlyfansapi::FanListActiveParams::Filter::Online }, nil?: true

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
        #   @param online [Integer, Onlyfansapi::Models::FanListActiveParams::Filter::Online, nil] Filter by online status (`1` for online fans).
        #
        #   @param tips [Integer] Filter by minimum tips. Must be at least 0.
        #
        #   @param total_spent [Integer] Filter by minimum amount total spent by a fan. Must be at least 0.

        # Filter by online status (`1` for online fans).
        #
        # @see Onlyfansapi::Models::FanListActiveParams::Filter#online
        module Online
          extend Onlyfansapi::Internal::Type::Enum

          ONLINE_1 = 1
          ONLINE_0 = 0

          # @!method self.values
          #   @return [Array<Integer>]
        end
      end

      # Filter by fan type.
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        ACTIVE = :active
        EXPIRED = :expired
        ALL = :all

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
