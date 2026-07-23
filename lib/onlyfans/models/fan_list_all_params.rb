# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Fans#list_all
    class FanListAllParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute account
      #
      #   @return [String]
      required :account, String

      # @!attribute filter
      #
      #   @return [Onlyfans::Models::FanListAllParams::Filter, nil]
      optional :filter, -> { Onlyfans::FanListAllParams::Filter }

      # @!attribute limit
      #   Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
      #   Must be at least 1. Must not be greater than 20.
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
      #   @return [Symbol, Onlyfans::Models::FanListAllParams::Type, nil]
      optional :type, enum: -> { Onlyfans::FanListAllParams::Type }

      # @!method initialize(account:, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Onlyfans::Models::FanListAllParams} for more details.
      #
      #   @param account [String]
      #
      #   @param filter [Onlyfans::Models::FanListAllParams::Filter]
      #
      #   @param limit [Integer] Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
      #
      #   @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      #   @param query [String, nil] Search within fan name/username.
      #
      #   @param type [Symbol, Onlyfans::Models::FanListAllParams::Type] Filter by fan type.
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Onlyfans::Internal::Type::BaseModel
        # @!attribute duration
        #   Filter by minimum subscription duration in months. Must use bracket syntax:
        #   filter[duration]=1 — the dot form (filter.duration=1) is NOT supported and will
        #   be ignored. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute online
        #   Filter by online status (`1` for online fans). Must use bracket syntax:
        #   filter[online]=1 — the dot form (filter.online=1) is NOT supported and will be
        #   ignored.
        #
        #   @return [Integer, Onlyfans::Models::FanListAllParams::Filter::Online, nil]
        optional :online, enum: -> { Onlyfans::FanListAllParams::Filter::Online }, nil?: true

        # @!attribute tips
        #   Filter by minimum tips. Must use bracket syntax: filter[tips]=100 — the dot form
        #   (filter.tips=100) is NOT supported and will be ignored. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :tips, Integer

        # @!attribute total_spent
        #   Filter by minimum amount total spent by a fan. Must use bracket syntax:
        #   filter[total_spent]=100 — the dot form (filter.total_spent=100) is NOT supported
        #   and will be ignored. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :total_spent, Integer

        # @!method initialize(duration: nil, online: nil, tips: nil, total_spent: nil)
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::FanListAllParams::Filter} for more details.
        #
        #   @param duration [Integer] Filter by minimum subscription duration in months. Must use bracket syntax: filt
        #
        #   @param online [Integer, Onlyfans::Models::FanListAllParams::Filter::Online, nil] Filter by online status (`1` for online fans). Must use bracket syntax: filter[o
        #
        #   @param tips [Integer] Filter by minimum tips. Must use bracket syntax: filter[tips]=100 — the dot form
        #
        #   @param total_spent [Integer] Filter by minimum amount total spent by a fan. Must use bracket syntax: filter[t

        # Filter by online status (`1` for online fans). Must use bracket syntax:
        # filter[online]=1 — the dot form (filter.online=1) is NOT supported and will be
        # ignored.
        #
        # @see Onlyfans::Models::FanListAllParams::Filter#online
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
