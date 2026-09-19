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
      #   @param limit [Integer] Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
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
        #   Filter by minimum subscription duration in months. Must use bracket syntax:
        #   filter[duration]=1 — the dot form (filter.duration=1) is rejected with a 422,
        #   because PHP rewrites it to `filter_duration` and the filter could not be
        #   applied. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute max_total_spent
        #   Filter by **maximum** amount total spent by a fan — use
        #   `filter[max_total_spent]=0` to isolate fans who have never spent. Combine with
        #   `filter[total_spent]` for a range. Must use bracket syntax:
        #   filter[max_total_spent]=0 — the dot form is rejected with a 422, because PHP
        #   rewrites it to `filter_max_total_spent` and the filter could not be applied.
        #
        #   OnlyFans itself has no maximum-spend filter, so this one is resolved against
        #   OnlyFansAPI's own fan index instead of being proxied. The fan objects in
        #   `data.list` are still fetched live from OnlyFans and are re-checked against your
        #   filters before being returned, but only fans we have already indexed for this
        #   account can appear. Each response reports its own coverage under `data._source`;
        #   when `data._source.is_complete` is `false` a full-base backfill is queued
        #   automatically, so retry later for a complete answer.
        #
        #   `data._source.omitted_from_page` counts fans that matched your filters but which
        #   OnlyFans returned no usable data for on that page (a deleted account, or a
        #   partial response). They are left out of `data.list` and not revisited later in
        #   the same walk, so a non-zero value means that page was short — start a fresh
        #   walk to retry them. Cannot be combined with `filter[online]`. Must be at
        #   least 0.
        #
        #   @return [Float, nil]
        optional :max_total_spent, Float

        # @!attribute online
        #   Filter by online status (`1` for online fans). Must use bracket syntax:
        #   filter[online]=1 — the dot form (filter.online=1) is rejected with a 422,
        #   because PHP rewrites it to `filter_online` and the filter could not be applied.
        #
        #   @return [Integer, Onlyfans::Models::FanListActiveParams::Filter::Online, nil]
        optional :online, enum: -> { Onlyfans::FanListActiveParams::Filter::Online }, nil?: true

        # @!attribute tips
        #   Filter by minimum tips. Must use bracket syntax: filter[tips]=100 — the dot form
        #   (filter.tips=100) is rejected with a 422, because PHP rewrites it to
        #   `filter_tips` and the filter could not be applied. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :tips, Integer

        # @!attribute total_spent
        #   Filter by minimum amount total spent by a fan. Must use bracket syntax:
        #   filter[total_spent]=100 — the dot form (filter.total_spent=100) is rejected with
        #   a 422, because PHP rewrites it to `filter_total_spent` and the filter could not
        #   be applied. Must be at least 0.
        #
        #   @return [Integer, nil]
        optional :total_spent, Integer

        # @!method initialize(duration: nil, max_total_spent: nil, online: nil, tips: nil, total_spent: nil)
        #   Some parameter documentations has been truncated, see
        #   {Onlyfans::Models::FanListActiveParams::Filter} for more details.
        #
        #   @param duration [Integer] Filter by minimum subscription duration in months. Must use bracket syntax: filt
        #
        #   @param max_total_spent [Float] Filter by **maximum** amount total spent by a fan — use `filter[max_total_spent]
        #
        #   @param online [Integer, Onlyfans::Models::FanListActiveParams::Filter::Online, nil] Filter by online status (`1` for online fans). Must use bracket syntax: filter[o
        #
        #   @param tips [Integer] Filter by minimum tips. Must use bracket syntax: filter[tips]=100 — the dot form
        #
        #   @param total_spent [Integer] Filter by minimum amount total spent by a fan. Must use bracket syntax: filter[t

        # Filter by online status (`1` for online fans). Must use bracket syntax:
        # filter[online]=1 — the dot form (filter.online=1) is rejected with a 422,
        # because PHP rewrites it to `filter_online` and the filter could not be applied.
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
