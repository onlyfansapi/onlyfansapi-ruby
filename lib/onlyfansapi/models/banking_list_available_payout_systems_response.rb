# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Banking#list_available_payout_systems
    class BankingListAvailablePayoutSystemsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta]
      #   @param data [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Data]

      # @see Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits, nil]
        optional :_rate_limits,
                 -> { Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute payout_code
        #
        #   @return [String, nil]
        optional :payout_code, String, api_name: :payoutCode

        # @!attribute payouts
        #
        #   @return [Array<Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout>, nil]
        optional :payouts,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout] }

        # @!method initialize(payout_code: nil, payouts: nil)
        #   @param payout_code [String]
        #   @param payouts [Array<Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout>]

        class Payout < Onlyfansapi::Internal::Type::BaseModel
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
          optional :fields, Onlyfansapi::Internal::Type::HashOf[Onlyfansapi::Internal::Type::Unknown]

          # @!attribute fields_order
          #
          #   @return [Array<Object>, nil]
          optional :fields_order,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
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
                   Onlyfansapi::Internal::Type::HashOf[Onlyfansapi::Internal::Type::Unknown],
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
