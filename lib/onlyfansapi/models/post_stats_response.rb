# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Posts#stats
    class PostStatsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::PostStatsResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::PostStatsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::PostStatsResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::PostStatsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::PostStatsResponse::Meta]
      #   @param data [Onlyfansapi::Models::PostStatsResponse::Data]

      # @see Onlyfansapi::Models::PostStatsResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::PostStatsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::PostStatsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::PostStatsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::PostStatsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::PostStatsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::PostStatsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::PostStatsResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::PostStatsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::PostStatsResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::PostStatsResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::PostStatsResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
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

        # @see Onlyfansapi::Models::PostStatsResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::PostStatsResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute comment_chart
        #
        #   @return [Array<Onlyfansapi::Models::PostStatsResponse::Data::CommentChart>, nil]
        optional :comment_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostStatsResponse::Data::CommentChart] },
                 api_name: :commentChart

        # @!attribute comment_count
        #
        #   @return [Integer, nil]
        optional :comment_count, Integer, api_name: :commentCount

        # @!attribute has_stats
        #
        #   @return [Boolean, nil]
        optional :has_stats, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStats

        # @!attribute has_video
        #
        #   @return [Boolean, nil]
        optional :has_video, Onlyfansapi::Internal::Type::Boolean, api_name: :hasVideo

        # @!attribute is_available
        #
        #   @return [Boolean, nil]
        optional :is_available, Onlyfansapi::Internal::Type::Boolean, api_name: :isAvailable

        # @!attribute like_chart
        #
        #   @return [Array<Onlyfansapi::Models::PostStatsResponse::Data::LikeChart>, nil]
        optional :like_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostStatsResponse::Data::LikeChart] },
                 api_name: :likeChart

        # @!attribute like_count
        #
        #   @return [Integer, nil]
        optional :like_count, Integer, api_name: :likeCount

        # @!attribute look_chart
        #
        #   @return [Array<Onlyfansapi::Models::PostStatsResponse::Data::LookChart>, nil]
        optional :look_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostStatsResponse::Data::LookChart] },
                 api_name: :lookChart

        # @!attribute look_count
        #
        #   @return [Integer, nil]
        optional :look_count, Integer, api_name: :lookCount

        # @!attribute look_duration
        #
        #   @return [Integer, nil]
        optional :look_duration, Integer, api_name: :lookDuration

        # @!attribute look_duration_average
        #
        #   @return [Integer, nil]
        optional :look_duration_average, Integer, api_name: :lookDurationAverage

        # @!attribute purchased_count
        #
        #   @return [Integer, nil]
        optional :purchased_count, Integer, api_name: :purchasedCount

        # @!attribute purchased_summ
        #
        #   @return [Integer, nil]
        optional :purchased_summ, Integer, api_name: :purchasedSumm

        # @!attribute purchases_chart
        #
        #   @return [Array<Onlyfansapi::Models::PostStatsResponse::Data::PurchasesChart>, nil]
        optional :purchases_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostStatsResponse::Data::PurchasesChart] },
                 api_name: :purchasesChart

        # @!attribute tip_chart
        #
        #   @return [Array<Onlyfansapi::Models::PostStatsResponse::Data::TipChart>, nil]
        optional :tip_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostStatsResponse::Data::TipChart] },
                 api_name: :tipChart

        # @!attribute tip_count
        #
        #   @return [Integer, nil]
        optional :tip_count, Integer, api_name: :tipCount

        # @!attribute tip_sum
        #
        #   @return [Integer, nil]
        optional :tip_sum, Integer, api_name: :tipSum

        # @!attribute tip_sum_chart
        #
        #   @return [Array<Onlyfansapi::Models::PostStatsResponse::Data::TipSumChart>, nil]
        optional :tip_sum_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostStatsResponse::Data::TipSumChart] },
                 api_name: :tipSumChart

        # @!attribute unique_look_chart
        #
        #   @return [Array<Onlyfansapi::Models::PostStatsResponse::Data::UniqueLookChart>, nil]
        optional :unique_look_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PostStatsResponse::Data::UniqueLookChart] },
                 api_name: :uniqueLookChart

        # @!attribute unique_look_count
        #
        #   @return [Integer, nil]
        optional :unique_look_count, Integer, api_name: :uniqueLookCount

        # @!method initialize(comment_chart: nil, comment_count: nil, has_stats: nil, has_video: nil, is_available: nil, like_chart: nil, like_count: nil, look_chart: nil, look_count: nil, look_duration: nil, look_duration_average: nil, purchased_count: nil, purchased_summ: nil, purchases_chart: nil, tip_chart: nil, tip_count: nil, tip_sum: nil, tip_sum_chart: nil, unique_look_chart: nil, unique_look_count: nil)
        #   @param comment_chart [Array<Onlyfansapi::Models::PostStatsResponse::Data::CommentChart>]
        #   @param comment_count [Integer]
        #   @param has_stats [Boolean]
        #   @param has_video [Boolean]
        #   @param is_available [Boolean]
        #   @param like_chart [Array<Onlyfansapi::Models::PostStatsResponse::Data::LikeChart>]
        #   @param like_count [Integer]
        #   @param look_chart [Array<Onlyfansapi::Models::PostStatsResponse::Data::LookChart>]
        #   @param look_count [Integer]
        #   @param look_duration [Integer]
        #   @param look_duration_average [Integer]
        #   @param purchased_count [Integer]
        #   @param purchased_summ [Integer]
        #   @param purchases_chart [Array<Onlyfansapi::Models::PostStatsResponse::Data::PurchasesChart>]
        #   @param tip_chart [Array<Onlyfansapi::Models::PostStatsResponse::Data::TipChart>]
        #   @param tip_count [Integer]
        #   @param tip_sum [Integer]
        #   @param tip_sum_chart [Array<Onlyfansapi::Models::PostStatsResponse::Data::TipSumChart>]
        #   @param unique_look_chart [Array<Onlyfansapi::Models::PostStatsResponse::Data::UniqueLookChart>]
        #   @param unique_look_count [Integer]

        class CommentChart < Onlyfansapi::Internal::Type::BaseModel
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

        class LikeChart < Onlyfansapi::Internal::Type::BaseModel
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

        class LookChart < Onlyfansapi::Internal::Type::BaseModel
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

        class PurchasesChart < Onlyfansapi::Internal::Type::BaseModel
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

        class TipChart < Onlyfansapi::Internal::Type::BaseModel
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

        class TipSumChart < Onlyfansapi::Internal::Type::BaseModel
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

        class UniqueLookChart < Onlyfansapi::Internal::Type::BaseModel
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
