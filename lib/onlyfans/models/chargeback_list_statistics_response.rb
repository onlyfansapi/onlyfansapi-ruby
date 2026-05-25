# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Chargebacks#list_statistics
    class ChargebackListStatisticsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::ChargebackListStatisticsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::ChargebackListStatisticsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::ChargebackListStatisticsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::ChargebackListStatisticsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::ChargebackListStatisticsResponse::Meta]
      #   @param data [Onlyfans::Models::ChargebackListStatisticsResponse::Data]

      # @see Onlyfans::Models::ChargebackListStatisticsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::ChargebackListStatisticsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::ChargebackListStatisticsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::ChargebackListStatisticsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::ChargebackListStatisticsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::ChargebackListStatisticsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::ChargebackListStatisticsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::ChargebackListStatisticsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::ChargebackListStatisticsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::ChargebackListStatisticsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::ChargebackListStatisticsResponse::Meta#_cache
        class Cache < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfans::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfans::Models::ChargebackListStatisticsResponse::Meta#_credits
        class Credits < Onlyfans::Internal::Type::BaseModel
          # @!attribute balance
          #
          #   @return [Integer, nil]
          optional :balance, Integer

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute used
          #
          #   @return [Integer, nil]
          optional :used, Integer

          # @!method initialize(balance: nil, note: nil, used: nil)
          #   @param balance [Integer]
          #   @param note [String]
          #   @param used [Integer]
        end

        # @see Onlyfans::Models::ChargebackListStatisticsResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [Integer, nil]
          optional :limit_day, Integer

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute remaining_day
          #
          #   @return [Integer, nil]
          optional :remaining_day, Integer

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [Integer]
          #   @param limit_minute [Integer]
          #   @param remaining_day [Integer]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfans::Models::ChargebackListStatisticsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute chart_amount
        #
        #   @return [Array<Onlyfans::Models::ChargebackListStatisticsResponse::Data::ChartAmount>, nil]
        optional :chart_amount,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ChargebackListStatisticsResponse::Data::ChartAmount] },
                 api_name: :chartAmount

        # @!attribute chart_count
        #
        #   @return [Array<Onlyfans::Models::ChargebackListStatisticsResponse::Data::ChartCount>, nil]
        optional :chart_count,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::ChargebackListStatisticsResponse::Data::ChartCount] },
                 api_name: :chartCount

        # @!attribute delta
        #
        #   @return [Integer, nil]
        optional :delta, Integer

        # @!attribute total
        #
        #   @return [Float, nil]
        optional :total, Float

        # @!method initialize(chart_amount: nil, chart_count: nil, delta: nil, total: nil)
        #   @param chart_amount [Array<Onlyfans::Models::ChargebackListStatisticsResponse::Data::ChartAmount>]
        #   @param chart_count [Array<Onlyfans::Models::ChargebackListStatisticsResponse::Data::ChartCount>]
        #   @param delta [Integer]
        #   @param total [Float]

        class ChartAmount < Onlyfans::Internal::Type::BaseModel
          # @!attribute count
          #
          #   @return [Float, nil]
          optional :count, Float

          # @!attribute date
          #
          #   @return [String, nil]
          optional :date, String

          # @!method initialize(count: nil, date: nil)
          #   @param count [Float]
          #   @param date [String]
        end

        class ChartCount < Onlyfans::Internal::Type::BaseModel
          # @!attribute count
          #
          #   @return [Integer, nil]
          optional :count, Integer

          # @!attribute date
          #
          #   @return [String, nil]
          optional :date, String

          # @!method initialize(count: nil, date: nil)
          #   @param count [Integer]
          #   @param date [String]
        end
      end
    end
  end
end
