# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Payouts#retrieve_balances
    class PayoutRetrieveBalancesResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::PayoutRetrieveBalancesResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::PayoutRetrieveBalancesResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta]
      #   @param data [Onlyfans::Models::PayoutRetrieveBalancesResponse::Data]

      # @see Onlyfans::Models::PayoutRetrieveBalancesResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits]

        # @see Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta#_cache
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

        # @see Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta#_credits
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

        # @see Onlyfans::Models::PayoutRetrieveBalancesResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::PayoutRetrieveBalancesResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute currency
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute manual_payout_pending_days
        #
        #   @return [Integer, nil]
        optional :manual_payout_pending_days, Integer, api_name: :manualPayoutPendingDays

        # @!attribute max_payout_summ
        #
        #   @return [Float, nil]
        optional :max_payout_summ, Float, api_name: :maxPayoutSumm

        # @!attribute min_payout_summ
        #
        #   @return [Integer, nil]
        optional :min_payout_summ, Integer, api_name: :minPayoutSumm

        # @!attribute payout_available
        #
        #   @return [Float, nil]
        optional :payout_available, Float, api_name: :payoutAvailable

        # @!attribute payout_pending
        #
        #   @return [Float, nil]
        optional :payout_pending, Float, api_name: :payoutPending

        # @!attribute withdrawal_period
        #
        #   @return [String, nil]
        optional :withdrawal_period, String, api_name: :withdrawalPeriod

        # @!attribute withdrawal_period_options
        #
        #   @return [Array<Onlyfans::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption>, nil]
        optional :withdrawal_period_options,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption] },
                 api_name: :withdrawalPeriodOptions

        # @!method initialize(currency: nil, manual_payout_pending_days: nil, max_payout_summ: nil, min_payout_summ: nil, payout_available: nil, payout_pending: nil, withdrawal_period: nil, withdrawal_period_options: nil)
        #   @param currency [String]
        #   @param manual_payout_pending_days [Integer]
        #   @param max_payout_summ [Float]
        #   @param min_payout_summ [Integer]
        #   @param payout_available [Float]
        #   @param payout_pending [Float]
        #   @param withdrawal_period [String]
        #   @param withdrawal_period_options [Array<Onlyfans::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption>]

        class WithdrawalPeriodOption < Onlyfans::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(code: nil, name: nil)
          #   @param code [String]
          #   @param name [String]
        end
      end
    end
  end
end
