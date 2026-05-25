# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Me#get_top_percentage
    class MeGetTopPercentageResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::MeGetTopPercentageResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::MeGetTopPercentageResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::MeGetTopPercentageResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::MeGetTopPercentageResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::MeGetTopPercentageResponse::Meta]
      #   @param data [Onlyfans::Models::MeGetTopPercentageResponse::Data]

      # @see Onlyfans::Models::MeGetTopPercentageResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::MeGetTopPercentageResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::MeGetTopPercentageResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::MeGetTopPercentageResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::MeGetTopPercentageResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::MeGetTopPercentageResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::MeGetTopPercentageResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::MeGetTopPercentageResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::MeGetTopPercentageResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::MeGetTopPercentageResponse::Meta::RateLimits]

        # @see Onlyfans::Models::MeGetTopPercentageResponse::Meta#_cache
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

        # @see Onlyfans::Models::MeGetTopPercentageResponse::Meta#_credits
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

        # @see Onlyfans::Models::MeGetTopPercentageResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::MeGetTopPercentageResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String, nil?: true

        # @!attribute top_percentage
        #
        #   @return [Float, nil]
        optional :top_percentage, Float

        # @!method initialize(message: nil, top_percentage: nil)
        #   @param message [String, nil]
        #   @param top_percentage [Float]
      end
    end
  end
end
