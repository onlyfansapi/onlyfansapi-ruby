# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Payouts#list_requests
    class PayoutListRequestsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::PayoutListRequestsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::PayoutListRequestsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::PayoutListRequestsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::PayoutListRequestsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::PayoutListRequestsResponse::Meta]
      #   @param data [Onlyfans::Models::PayoutListRequestsResponse::Data]

      # @see Onlyfans::Models::PayoutListRequestsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::PayoutListRequestsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::PayoutListRequestsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::PayoutListRequestsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::PayoutListRequestsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::PayoutListRequestsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::PayoutListRequestsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::PayoutListRequestsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::PayoutListRequestsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::PayoutListRequestsResponse::Meta::RateLimits]

        # @see Onlyfans::Models::PayoutListRequestsResponse::Meta#_cache
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

        # @see Onlyfans::Models::PayoutListRequestsResponse::Meta#_credits
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

        # @see Onlyfans::Models::PayoutListRequestsResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::PayoutListRequestsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::PayoutListRequestsResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PayoutListRequestsResponse::Data::List] }

        # @!attribute marker
        #
        #   @return [Integer, nil]
        optional :marker, Integer

        # @!method initialize(list: nil, marker: nil)
        #   @param list [Array<Onlyfans::Models::PayoutListRequestsResponse::Data::List>]
        #   @param marker [Integer]

        class List < Onlyfans::Internal::Type::BaseModel
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
          optional :reject_reason, String, api_name: :rejectReason, nil?: true

          # @!attribute state
          #
          #   @return [String, nil]
          optional :state, String

          # @!method initialize(amount: nil, created_at: nil, currency: nil, invoice_id: nil, reject_reason: nil, state: nil)
          #   @param amount [Integer]
          #   @param created_at [String]
          #   @param currency [String]
          #   @param invoice_id [String]
          #   @param reject_reason [String, nil]
          #   @param state [String]
        end
      end
    end
  end
end
