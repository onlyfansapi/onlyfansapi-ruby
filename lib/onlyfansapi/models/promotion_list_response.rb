# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Promotions#list
    class PromotionListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::PromotionListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::PromotionListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::PromotionListResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::PromotionListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::PromotionListResponse::Meta]
      #   @param data [Onlyfansapi::Models::PromotionListResponse::Data]

      # @see Onlyfansapi::Models::PromotionListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::PromotionListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::PromotionListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::PromotionListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::PromotionListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::PromotionListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::PromotionListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::PromotionListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::PromotionListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::PromotionListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::PromotionListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::PromotionListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::PromotionListResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::PromotionListResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute items
        #
        #   @return [Array<Onlyfansapi::Models::PromotionListResponse::Data::Item>, nil]
        optional :items,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PromotionListResponse::Data::Item] }

        # @!method initialize(has_more: nil, items: nil)
        #   @param has_more [Boolean]
        #   @param items [Array<Onlyfansapi::Models::PromotionListResponse::Data::Item>]

        class Item < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_claim
          #
          #   @return [Boolean, nil]
          optional :can_claim, Onlyfansapi::Internal::Type::Boolean, api_name: :canClaim

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
          optional :has_related_promo, Onlyfansapi::Internal::Type::Boolean, api_name: :hasRelatedPromo

          # @!attribute is_finished
          #
          #   @return [Boolean, nil]
          optional :is_finished, Onlyfansapi::Internal::Type::Boolean, api_name: :isFinished

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
end
