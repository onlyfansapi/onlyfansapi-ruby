# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#list_payout_requests
    class PayoutListPayoutRequestsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta]
      #   @param data [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Data]

      # @see Onlyfansapi::Models::PayoutListPayoutRequestsResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::PayoutListPayoutRequestsResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Data::List] }

        # @!attribute marker
        #
        #   @return [Integer, nil]
        optional :marker, Integer

        # @!method initialize(list: nil, marker: nil)
        #   @param list [Array<Onlyfansapi::Models::PayoutListPayoutRequestsResponse::Data::List>]
        #   @param marker [Integer]

        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [Integer, nil]
          optional :amount, Integer

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute currency
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute invoice_id
          #
          #   @return [String, nil]
          optional :invoice_id, String, api_name: :invoiceId

          # @!attribute reject_reason
          #
          #   @return [String, nil]
          optional :reject_reason, String, api_name: :rejectReason

          # @!attribute state
          #
          #   @return [String, nil]
          optional :state, String

          # @!method initialize(amount: nil, created_at: nil, currency: nil, invoice_id: nil, reject_reason: nil, state: nil)
          #   @param amount [Integer]
          #   @param created_at [String]
          #   @param currency [String]
          #   @param invoice_id [String]
          #   @param reject_reason [String]
          #   @param state [String]
        end
      end
    end
  end
end
