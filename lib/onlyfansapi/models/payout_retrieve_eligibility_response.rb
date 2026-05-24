# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#retrieve_eligibility
    class PayoutRetrieveEligibilityResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta]
      #   @param data [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Data]

      # @see Onlyfansapi::Models::PayoutRetrieveEligibilityResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::PayoutRetrieveEligibilityResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::PayoutRetrieveEligibilityResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute can_receive_manual_payout
        #
        #   @return [Boolean, nil]
        optional :can_receive_manual_payout,
                 Onlyfansapi::Internal::Type::Boolean,
                 api_name: :canReceiveManualPayout

        # @!attribute is_verified_reason
        #
        #   @return [Boolean, nil]
        optional :is_verified_reason, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerifiedReason

        # @!attribute need_update_banking
        #
        #   @return [Boolean, nil]
        optional :need_update_banking, Onlyfansapi::Internal::Type::Boolean, api_name: :needUpdateBanking

        # @!method initialize(can_receive_manual_payout: nil, is_verified_reason: nil, need_update_banking: nil)
        #   @param can_receive_manual_payout [Boolean]
        #   @param is_verified_reason [Boolean]
        #   @param need_update_banking [Boolean]
      end
    end
  end
end
