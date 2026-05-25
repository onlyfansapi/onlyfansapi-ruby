# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Promotions#create
    class PromotionCreateResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::PromotionCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::PromotionCreateResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::PromotionCreateResponse::Data>, nil]
      optional :data, -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PromotionCreateResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::PromotionCreateResponse::Meta]
      #   @param data [Array<Onlyfans::Models::PromotionCreateResponse::Data>]

      # @see Onlyfans::Models::PromotionCreateResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::PromotionCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::PromotionCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::PromotionCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::PromotionCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::PromotionCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::PromotionCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::PromotionCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::PromotionCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::PromotionCreateResponse::Meta::RateLimits]

        # @see Onlyfans::Models::PromotionCreateResponse::Meta#_cache
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

        # @see Onlyfans::Models::PromotionCreateResponse::Meta#_credits
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

        # @see Onlyfans::Models::PromotionCreateResponse::Meta#_rate_limits
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

      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute can_claim
        #
        #   @return [Boolean, nil]
        optional :can_claim, Onlyfans::Internal::Type::Boolean, api_name: :canClaim

        # @!attribute claims_count
        #
        #   @return [Integer, nil]
        optional :claims_count, Integer, api_name: :claimsCount

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute finished_at
        #
        #   @return [String, nil]
        optional :finished_at, String, api_name: :finishedAt

        # @!attribute has_related_promo
        #
        #   @return [Boolean, nil]
        optional :has_related_promo, Onlyfans::Internal::Type::Boolean, api_name: :hasRelatedPromo

        # @!attribute is_finished
        #
        #   @return [Boolean, nil]
        optional :is_finished, Onlyfans::Internal::Type::Boolean, api_name: :isFinished

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute price
        #
        #   @return [Integer, nil]
        optional :price, Integer

        # @!attribute raw_message
        #
        #   @return [String, nil]
        optional :raw_message, String, api_name: :rawMessage

        # @!attribute subscribe_counts
        #
        #   @return [Integer, nil]
        optional :subscribe_counts, Integer, api_name: :subscribeCounts

        # @!attribute subscribe_days
        #
        #   @return [Integer, nil]
        optional :subscribe_days, Integer, api_name: :subscribeDays

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, can_claim: nil, claims_count: nil, created_at: nil, finished_at: nil, has_related_promo: nil, is_finished: nil, message: nil, price: nil, raw_message: nil, subscribe_counts: nil, subscribe_days: nil, type: nil)
        #   @param id [Integer]
        #   @param can_claim [Boolean]
        #   @param claims_count [Integer]
        #   @param created_at [String]
        #   @param finished_at [String]
        #   @param has_related_promo [Boolean]
        #   @param is_finished [Boolean]
        #   @param message [String]
        #   @param price [Integer]
        #   @param raw_message [String]
        #   @param subscribe_counts [Integer]
        #   @param subscribe_days [Integer]
        #   @param type [String]
      end
    end
  end
end
