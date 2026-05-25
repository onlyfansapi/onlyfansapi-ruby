# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Banking#list_available_payout_systems
    class BankingListAvailablePayoutSystemsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta]
      #   @param data [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data]

      # @see Onlyfans::Models::BankingListAvailablePayoutSystemsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits, nil]
        optional :_rate_limits,
                 -> { Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta#_cache
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

        # @see Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta#_credits
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

        # @see Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::BankingListAvailablePayoutSystemsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute payout_code
        #
        #   @return [String, nil]
        optional :payout_code, String, api_name: :payoutCode

        # @!attribute payouts
        #
        #   @return [Array<Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout>, nil]
        optional :payouts,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout] }

        # @!method initialize(payout_code: nil, payouts: nil)
        #   @param payout_code [String]
        #   @param payouts [Array<Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout>]

        class Payout < Onlyfans::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute fields
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :fields, Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown]

          # @!attribute fields_order
          #
          #   @return [Array<Object>, nil]
          optional :fields_order,
                   Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown],
                   api_name: :fieldsOrder

          # @!attribute min_payout_summ
          #
          #   @return [Integer, nil]
          optional :min_payout_summ, Integer, api_name: :minPayoutSumm

          # @!attribute payout_time
          #
          #   @return [String, nil]
          optional :payout_time, String, api_name: :payoutTime

          # @!attribute subtitle
          #
          #   @return [String, nil]
          optional :subtitle, String

          # @!attribute title
          #
          #   @return [String, nil]
          optional :title, String

          # @!attribute ui_mapping
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :ui_mapping,
                   Onlyfans::Internal::Type::HashOf[Onlyfans::Internal::Type::Unknown],
                   api_name: :uiMapping

          # @!method initialize(code: nil, description: nil, fields: nil, fields_order: nil, min_payout_summ: nil, payout_time: nil, subtitle: nil, title: nil, ui_mapping: nil)
          #   @param code [String]
          #   @param description [String]
          #   @param fields [Hash{Symbol=>Object}]
          #   @param fields_order [Array<Object>]
          #   @param min_payout_summ [Integer]
          #   @param payout_time [String]
          #   @param subtitle [String]
          #   @param title [String]
          #   @param ui_mapping [Hash{Symbol=>Object}]
        end
      end
    end
  end
end
