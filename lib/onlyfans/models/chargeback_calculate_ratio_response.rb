# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Chargebacks#calculate_ratio
    class ChargebackCalculateRatioResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::ChargebackCalculateRatioResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::ChargebackCalculateRatioResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::ChargebackCalculateRatioResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta]
      #   @param data [Onlyfans::Models::ChargebackCalculateRatioResponse::Data]

      # @see Onlyfans::Models::ChargebackCalculateRatioResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::ChargebackCalculateRatioResponse::Meta::RateLimits]

        # @see Onlyfans::Models::ChargebackCalculateRatioResponse::Meta#_cache
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

        # @see Onlyfans::Models::ChargebackCalculateRatioResponse::Meta#_credits
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

        # @see Onlyfans::Models::ChargebackCalculateRatioResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::ChargebackCalculateRatioResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute chargebacks_ratio
        #
        #   @return [Float, nil]
        optional :chargebacks_ratio, Float, api_name: :chargebacksRatio

        # @!method initialize(chargebacks_ratio: nil)
        #   @param chargebacks_ratio [Float]
      end
    end
  end
end
