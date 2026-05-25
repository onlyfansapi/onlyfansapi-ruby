# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stories#mark_as_watched
    class StoryMarkAsWatchedResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::StoryMarkAsWatchedResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::StoryMarkAsWatchedResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::StoryMarkAsWatchedResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta]
      #   @param data [Onlyfans::Models::StoryMarkAsWatchedResponse::Data]

      # @see Onlyfans::Models::StoryMarkAsWatchedResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::StoryMarkAsWatchedResponse::Meta::RateLimits]

        # @see Onlyfans::Models::StoryMarkAsWatchedResponse::Meta#_cache
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

        # @see Onlyfans::Models::StoryMarkAsWatchedResponse::Meta#_credits
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

        # @see Onlyfans::Models::StoryMarkAsWatchedResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
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

      # @see Onlyfans::Models::StoryMarkAsWatchedResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute success
        #
        #   @return [Boolean, nil]
        optional :success, Onlyfans::Internal::Type::Boolean

        # @!method initialize(success: nil)
        #   @param success [Boolean]
      end
    end
  end
end
