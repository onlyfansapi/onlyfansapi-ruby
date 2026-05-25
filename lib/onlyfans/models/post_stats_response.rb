# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Posts#stats
    class PostStatsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::PostStatsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::PostStatsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::PostStatsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::PostStatsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::PostStatsResponse::Meta]
      #   @param data [Onlyfans::Models::PostStatsResponse::Data]

      # @see Onlyfans::Models::PostStatsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::PostStatsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::PostStatsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::PostStatsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::PostStatsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::PostStatsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::PostStatsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::PostStatsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::PostStatsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::PostStatsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::PostStatsResponse::Meta#_cache
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

        # @see Onlyfans::Models::PostStatsResponse::Meta#_credits
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

        # @see Onlyfans::Models::PostStatsResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::PostStatsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute comment_chart
        #
        #   @return [Array<Onlyfans::Models::PostStatsResponse::Data::CommentChart>, nil]
        optional :comment_chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostStatsResponse::Data::CommentChart] },
                 api_name: :commentChart

        # @!attribute comment_count
        #
        #   @return [Integer, nil]
        optional :comment_count, Integer, api_name: :commentCount

        # @!attribute has_stats
        #
        #   @return [Boolean, nil]
        optional :has_stats, Onlyfans::Internal::Type::Boolean, api_name: :hasStats

        # @!attribute has_video
        #
        #   @return [Boolean, nil]
        optional :has_video, Onlyfans::Internal::Type::Boolean, api_name: :hasVideo

        # @!attribute is_available
        #
        #   @return [Boolean, nil]
        optional :is_available, Onlyfans::Internal::Type::Boolean, api_name: :isAvailable

        # @!attribute like_chart
        #
        #   @return [Array<Onlyfans::Models::PostStatsResponse::Data::LikeChart>, nil]
        optional :like_chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostStatsResponse::Data::LikeChart] },
                 api_name: :likeChart

        # @!attribute like_count
        #
        #   @return [Integer, nil]
        optional :like_count, Integer, api_name: :likeCount

        # @!attribute look_chart
        #
        #   @return [Array<Onlyfans::Models::PostStatsResponse::Data::LookChart>, nil]
        optional :look_chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostStatsResponse::Data::LookChart] },
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
        #   @return [Array<Onlyfans::Models::PostStatsResponse::Data::PurchasesChart>, nil]
        optional :purchases_chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostStatsResponse::Data::PurchasesChart] },
                 api_name: :purchasesChart

        # @!attribute tip_chart
        #
        #   @return [Array<Onlyfans::Models::PostStatsResponse::Data::TipChart>, nil]
        optional :tip_chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostStatsResponse::Data::TipChart] },
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
        #   @return [Array<Onlyfans::Models::PostStatsResponse::Data::TipSumChart>, nil]
        optional :tip_sum_chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostStatsResponse::Data::TipSumChart] },
                 api_name: :tipSumChart

        # @!attribute unique_look_chart
        #
        #   @return [Array<Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart>, nil]
        optional :unique_look_chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart] },
                 api_name: :uniqueLookChart

        # @!attribute unique_look_count
        #
        #   @return [Integer, nil]
        optional :unique_look_count, Integer, api_name: :uniqueLookCount

        # @!method initialize(comment_chart: nil, comment_count: nil, has_stats: nil, has_video: nil, is_available: nil, like_chart: nil, like_count: nil, look_chart: nil, look_count: nil, look_duration: nil, look_duration_average: nil, purchased_count: nil, purchased_summ: nil, purchases_chart: nil, tip_chart: nil, tip_count: nil, tip_sum: nil, tip_sum_chart: nil, unique_look_chart: nil, unique_look_count: nil)
        #   @param comment_chart [Array<Onlyfans::Models::PostStatsResponse::Data::CommentChart>]
        #   @param comment_count [Integer]
        #   @param has_stats [Boolean]
        #   @param has_video [Boolean]
        #   @param is_available [Boolean]
        #   @param like_chart [Array<Onlyfans::Models::PostStatsResponse::Data::LikeChart>]
        #   @param like_count [Integer]
        #   @param look_chart [Array<Onlyfans::Models::PostStatsResponse::Data::LookChart>]
        #   @param look_count [Integer]
        #   @param look_duration [Integer]
        #   @param look_duration_average [Integer]
        #   @param purchased_count [Integer]
        #   @param purchased_summ [Integer]
        #   @param purchases_chart [Array<Onlyfans::Models::PostStatsResponse::Data::PurchasesChart>]
        #   @param tip_chart [Array<Onlyfans::Models::PostStatsResponse::Data::TipChart>]
        #   @param tip_count [Integer]
        #   @param tip_sum [Integer]
        #   @param tip_sum_chart [Array<Onlyfans::Models::PostStatsResponse::Data::TipSumChart>]
        #   @param unique_look_chart [Array<Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart>]
        #   @param unique_look_count [Integer]

        class CommentChart < Onlyfans::Internal::Type::BaseModel
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

        class LikeChart < Onlyfans::Internal::Type::BaseModel
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

        class LookChart < Onlyfans::Internal::Type::BaseModel
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

        class PurchasesChart < Onlyfans::Internal::Type::BaseModel
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

        class TipChart < Onlyfans::Internal::Type::BaseModel
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

        class TipSumChart < Onlyfans::Internal::Type::BaseModel
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

        class UniqueLookChart < Onlyfans::Internal::Type::BaseModel
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
