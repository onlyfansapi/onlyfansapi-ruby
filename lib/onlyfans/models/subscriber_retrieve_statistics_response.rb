# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Subscribers#retrieve_statistics
    class SubscriberRetrieveStatisticsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta]
      #   @param data [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data]

      # @see Onlyfans::Models::SubscriberRetrieveStatisticsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta#_cache
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

        # @see Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta#_credits
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

        # @see Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::SubscriberRetrieveStatisticsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute delta
        #
        #   @return [Float, nil]
        optional :delta, Float

        # @!attribute earnings
        #
        #   @return [Array<Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning>, nil]
        optional :earnings,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning] }

        # @!attribute subscribers
        #
        #   @return [Integer, nil]
        optional :subscribers, Integer

        # @!attribute subscribes
        #
        #   @return [Array<Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe>, nil]
        optional :subscribes,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe] }

        # @!attribute total
        #
        #   @return [Float, nil]
        optional :total, Float

        # @!method initialize(delta: nil, earnings: nil, subscribers: nil, subscribes: nil, total: nil)
        #   @param delta [Float]
        #   @param earnings [Array<Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Earning>]
        #   @param subscribers [Integer]
        #   @param subscribes [Array<Onlyfans::Models::SubscriberRetrieveStatisticsResponse::Data::Subscribe>]
        #   @param total [Float]

        class Earning < Onlyfans::Internal::Type::BaseModel
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

        class Subscribe < Onlyfans::Internal::Type::BaseModel
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
