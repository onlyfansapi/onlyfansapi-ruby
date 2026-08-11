# typed: strong

module Onlyfans
  module Models
    class FanListExpiredParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::FanListExpiredParams, Onlyfans::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account

      sig { returns(T.nilable(Onlyfans::FanListExpiredParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Onlyfans::FanListExpiredParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
      # Must be at least 1. Must not be greater than 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of fans to skip. Must be at least 0.
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Search within fan name/username.
      sig { returns(T.nilable(String)) }
      attr_accessor :query

      # Filter by fan type.
      sig { returns(T.nilable(Onlyfans::FanListExpiredParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Onlyfans::FanListExpiredParams::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          account: String,
          filter: Onlyfans::FanListExpiredParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          type: Onlyfans::FanListExpiredParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        filter: nil,
        # Number of fans to return (1-20). OnlyFans does not allow more than 20 per page.
        # Must be at least 1. Must not be greater than 20.
        limit: nil,
        # Number of fans to skip. Must be at least 0.
        offset: nil,
        # Search within fan name/username.
        query: nil,
        # Filter by fan type.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            filter: Onlyfans::FanListExpiredParams::Filter,
            limit: Integer,
            offset: Integer,
            query: T.nilable(String),
            type: Onlyfans::FanListExpiredParams::Type::OrSymbol,
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
              Onlyfans::FanListExpiredParams::Filter,
              Onlyfans::Internal::AnyHash
            )
          end

        # Filter by minimum subscription duration in months. Must use bracket syntax:
        # filter[duration]=1 — the dot form (filter.duration=1) is rejected with a 422,
        # because PHP rewrites it to `filter_duration` and the filter could not be
        # applied. Must be at least 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :duration

        sig { params(duration: Integer).void }
        attr_writer :duration

        # Filter by **maximum** amount total spent by a fan — use
        # `filter[max_total_spent]=0` to isolate fans who have never spent. Combine with
        # `filter[total_spent]` for a range. Must use bracket syntax:
        # filter[max_total_spent]=0 — the dot form is rejected with a 422, because PHP
        # rewrites it to `filter_max_total_spent` and the filter could not be applied.
        #
        # OnlyFans itself has no maximum-spend filter, so this one is resolved against
        # OnlyFansAPI's own fan index instead of being proxied. The fan objects in
        # `data.list` are still fetched live from OnlyFans and are re-checked against your
        # filters before being returned, but only fans we have already indexed for this
        # account can appear. Each response reports its own coverage under `data._source`;
        # when `data._source.is_complete` is `false` a full-base backfill is queued
        # automatically, so retry later for a complete answer.
        #
        # `data._source.omitted_from_page` counts fans that matched your filters but which
        # OnlyFans returned no usable data for on that page (a deleted account, or a
        # partial response). They are left out of `data.list` and not revisited later in
        # the same walk, so a non-zero value means that page was short — start a fresh
        # walk to retry them. Cannot be combined with `filter[online]`. Must be at
        # least 0.
        sig { returns(T.nilable(Float)) }
        attr_reader :max_total_spent

        sig { params(max_total_spent: Float).void }
        attr_writer :max_total_spent

        # Filter by online status (`1` for online fans). Must use bracket syntax:
        # filter[online]=1 — the dot form (filter.online=1) is rejected with a 422,
        # because PHP rewrites it to `filter_online` and the filter could not be applied.
        sig do
          returns(
            T.nilable(Onlyfans::FanListExpiredParams::Filter::Online::OrInteger)
          )
        end
        attr_accessor :online

        # Filter by minimum tips. Must use bracket syntax: filter[tips]=100 — the dot form
        # (filter.tips=100) is rejected with a 422, because PHP rewrites it to
        # `filter_tips` and the filter could not be applied. Must be at least 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :tips

        sig { params(tips: Integer).void }
        attr_writer :tips

        # Filter by minimum amount total spent by a fan. Must use bracket syntax:
        # filter[total_spent]=100 — the dot form (filter.total_spent=100) is rejected with
        # a 422, because PHP rewrites it to `filter_total_spent` and the filter could not
        # be applied. Must be at least 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_spent

        sig { params(total_spent: Integer).void }
        attr_writer :total_spent

        sig do
          params(
            duration: Integer,
            max_total_spent: Float,
            online:
              T.nilable(
                Onlyfans::FanListExpiredParams::Filter::Online::OrInteger
              ),
            tips: Integer,
            total_spent: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by minimum subscription duration in months. Must use bracket syntax:
          # filter[duration]=1 — the dot form (filter.duration=1) is rejected with a 422,
          # because PHP rewrites it to `filter_duration` and the filter could not be
          # applied. Must be at least 0.
          duration: nil,
          # Filter by **maximum** amount total spent by a fan — use
          # `filter[max_total_spent]=0` to isolate fans who have never spent. Combine with
          # `filter[total_spent]` for a range. Must use bracket syntax:
          # filter[max_total_spent]=0 — the dot form is rejected with a 422, because PHP
          # rewrites it to `filter_max_total_spent` and the filter could not be applied.
          #
          # OnlyFans itself has no maximum-spend filter, so this one is resolved against
          # OnlyFansAPI's own fan index instead of being proxied. The fan objects in
          # `data.list` are still fetched live from OnlyFans and are re-checked against your
          # filters before being returned, but only fans we have already indexed for this
          # account can appear. Each response reports its own coverage under `data._source`;
          # when `data._source.is_complete` is `false` a full-base backfill is queued
          # automatically, so retry later for a complete answer.
          #
          # `data._source.omitted_from_page` counts fans that matched your filters but which
          # OnlyFans returned no usable data for on that page (a deleted account, or a
          # partial response). They are left out of `data.list` and not revisited later in
          # the same walk, so a non-zero value means that page was short — start a fresh
          # walk to retry them. Cannot be combined with `filter[online]`. Must be at
          # least 0.
          max_total_spent: nil,
          # Filter by online status (`1` for online fans). Must use bracket syntax:
          # filter[online]=1 — the dot form (filter.online=1) is rejected with a 422,
          # because PHP rewrites it to `filter_online` and the filter could not be applied.
          online: nil,
          # Filter by minimum tips. Must use bracket syntax: filter[tips]=100 — the dot form
          # (filter.tips=100) is rejected with a 422, because PHP rewrites it to
          # `filter_tips` and the filter could not be applied. Must be at least 0.
          tips: nil,
          # Filter by minimum amount total spent by a fan. Must use bracket syntax:
          # filter[total_spent]=100 — the dot form (filter.total_spent=100) is rejected with
          # a 422, because PHP rewrites it to `filter_total_spent` and the filter could not
          # be applied. Must be at least 0.
          total_spent: nil
        )
        end

        sig do
          override.returns(
            {
              duration: Integer,
              max_total_spent: Float,
              online:
                T.nilable(
                  Onlyfans::FanListExpiredParams::Filter::Online::OrInteger
                ),
              tips: Integer,
              total_spent: Integer
            }
          )
        end
        def to_hash
        end

        # Filter by online status (`1` for online fans). Must use bracket syntax:
        # filter[online]=1 — the dot form (filter.online=1) is rejected with a 422,
        # because PHP rewrites it to `filter_online` and the filter could not be applied.
        module Online
          extend Onlyfans::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(Integer, Onlyfans::FanListExpiredParams::Filter::Online)
            end
          OrInteger = T.type_alias { Integer }

          ONLINE_1 =
            T.let(
              1,
              Onlyfans::FanListExpiredParams::Filter::Online::TaggedInteger
            )
          ONLINE_0 =
            T.let(
              0,
              Onlyfans::FanListExpiredParams::Filter::Online::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                Onlyfans::FanListExpiredParams::Filter::Online::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end
      end

      # Filter by fan type.
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::FanListExpiredParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(:active, Onlyfans::FanListExpiredParams::Type::TaggedSymbol)
        EXPIRED =
          T.let(:expired, Onlyfans::FanListExpiredParams::Type::TaggedSymbol)
        ALL = T.let(:all, Onlyfans::FanListExpiredParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Onlyfans::FanListExpiredParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
