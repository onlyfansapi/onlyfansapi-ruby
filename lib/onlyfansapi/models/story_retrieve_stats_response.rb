# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stories#retrieve_stats
    class StoryRetrieveStatsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::StoryRetrieveStatsResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::StoryRetrieveStatsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta]
      #   @param data [Onlyfansapi::Models::StoryRetrieveStatsResponse::Data]

      # @see Onlyfansapi::Models::StoryRetrieveStatsResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [String, nil]
          optional :limit_day, String, nil?: true

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute remaining_day
          #
          #   @return [String, nil]
          optional :remaining_day, String, nil?: true

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, notice: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [String, nil]
          #   @param limit_minute [Integer]
          #   @param notice [String]
          #   @param remaining_day [String, nil]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfansapi::Models::StoryRetrieveStatsResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute story_comment_all
        #
        #   @return [Array<String>, nil]
        optional :story_comment_all, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :storyCommentAll

        # @!attribute story_comment_chart
        #
        #   @return [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart>, nil]
        optional :story_comment_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart] },
                 api_name: :storyCommentChart

        # @!attribute story_comment_count
        #
        #   @return [Integer, nil]
        optional :story_comment_count, Integer, api_name: :storyCommentCount

        # @!attribute story_like_all
        #
        #   @return [Array<String>, nil]
        optional :story_like_all, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :storyLikeAll

        # @!attribute story_like_chart
        #
        #   @return [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart>, nil]
        optional :story_like_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart] },
                 api_name: :storyLikeChart

        # @!attribute story_like_count
        #
        #   @return [Integer, nil]
        optional :story_like_count, Integer, api_name: :storyLikeCount

        # @!attribute story_look_all
        #
        #   @return [Array<String>, nil]
        optional :story_look_all, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :storyLookAll

        # @!attribute story_look_chart
        #
        #   @return [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart>, nil]
        optional :story_look_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart] },
                 api_name: :storyLookChart

        # @!attribute story_look_count
        #
        #   @return [String, nil]
        optional :story_look_count, String, api_name: :storyLookCount

        # @!attribute story_tip_all
        #
        #   @return [Array<String>, nil]
        optional :story_tip_all, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :storyTipAll

        # @!attribute story_tip_chart
        #
        #   @return [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart>, nil]
        optional :story_tip_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart] },
                 api_name: :storyTipChart

        # @!attribute story_tip_count
        #
        #   @return [Integer, nil]
        optional :story_tip_count, Integer, api_name: :storyTipCount

        # @!attribute story_tip_sum
        #
        #   @return [Integer, nil]
        optional :story_tip_sum, Integer, api_name: :storyTipSum

        # @!attribute story_tip_sum_chart
        #
        #   @return [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart>, nil]
        optional :story_tip_sum_chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart] },
                 api_name: :storyTipSumChart

        # @!method initialize(created_at: nil, story_comment_all: nil, story_comment_chart: nil, story_comment_count: nil, story_like_all: nil, story_like_chart: nil, story_like_count: nil, story_look_all: nil, story_look_chart: nil, story_look_count: nil, story_tip_all: nil, story_tip_chart: nil, story_tip_count: nil, story_tip_sum: nil, story_tip_sum_chart: nil)
        #   @param created_at [String]
        #   @param story_comment_all [Array<String>]
        #   @param story_comment_chart [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart>]
        #   @param story_comment_count [Integer]
        #   @param story_like_all [Array<String>]
        #   @param story_like_chart [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart>]
        #   @param story_like_count [Integer]
        #   @param story_look_all [Array<String>]
        #   @param story_look_chart [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart>]
        #   @param story_look_count [String]
        #   @param story_tip_all [Array<String>]
        #   @param story_tip_chart [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart>]
        #   @param story_tip_count [Integer]
        #   @param story_tip_sum [Integer]
        #   @param story_tip_sum_chart [Array<Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart>]

        class StoryCommentChart < Onlyfansapi::Internal::Type::BaseModel
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

        class StoryLikeChart < Onlyfansapi::Internal::Type::BaseModel
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

        class StoryLookChart < Onlyfansapi::Internal::Type::BaseModel
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

        class StoryTipChart < Onlyfansapi::Internal::Type::BaseModel
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

        class StoryTipSumChart < Onlyfansapi::Internal::Type::BaseModel
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
