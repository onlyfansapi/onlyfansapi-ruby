# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Statistics#get_subscriber_metrics
    class StatisticGetSubscriberMetricsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta]
      #   @param data [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data]

      # @see Onlyfans::Models::StatisticGetSubscriberMetricsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta#_cache
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

        # @see Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta#_credits
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

        # @see Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::StatisticGetSubscriberMetricsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute detailed
        #
        #   @return [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data::Detailed, nil]
        optional :detailed, -> { Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data::Detailed }

        # @!attribute new_subscriptions
        #
        #   @return [Integer, nil]
        optional :new_subscriptions, Integer

        # @!attribute renewed_subscriptions
        #
        #   @return [Integer, nil]
        optional :renewed_subscriptions, Integer

        # @!attribute total_subscriptions
        #
        #   @return [Integer, nil]
        optional :total_subscriptions, Integer

        # @!method initialize(detailed: nil, new_subscriptions: nil, renewed_subscriptions: nil, total_subscriptions: nil)
        #   @param detailed [Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data::Detailed]
        #   @param new_subscriptions [Integer]
        #   @param renewed_subscriptions [Integer]
        #   @param total_subscriptions [Integer]

        # @see Onlyfans::Models::StatisticGetSubscriberMetricsResponse::Data#detailed
        class Detailed < Onlyfans::Internal::Type::BaseModel
          # @!attribute free_subscriptions
          #
          #   @return [Integer, nil]
          optional :free_subscriptions, Integer

          # @!attribute paid_subscriptions
          #
          #   @return [Integer, nil]
          optional :paid_subscriptions, Integer

          # @!attribute unknown_subscriptions
          #
          #   @return [Integer, nil]
          optional :unknown_subscriptions, Integer

          # @!method initialize(free_subscriptions: nil, paid_subscriptions: nil, unknown_subscriptions: nil)
          #   @param free_subscriptions [Integer]
          #   @param paid_subscriptions [Integer]
          #   @param unknown_subscriptions [Integer]
        end
      end
    end
  end
end
