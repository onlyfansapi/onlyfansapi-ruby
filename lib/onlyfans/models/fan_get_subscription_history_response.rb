# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Fans#get_subscription_history
    class FanGetSubscriptionHistoryResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::FanGetSubscriptionHistoryResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta]
      #   @param data [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Data]

      # @see Onlyfans::Models::FanGetSubscriptionHistoryResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits]

        # @see Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta#_cache
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

        # @see Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta#_credits
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

        # @see Onlyfans::Models::FanGetSubscriptionHistoryResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::FanGetSubscriptionHistoryResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::FanGetSubscriptionHistoryResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::FanGetSubscriptionHistoryResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfans::Models::FanGetSubscriptionHistoryResponse::Data::List>]

        class List < Onlyfans::Internal::Type::BaseModel
          # @!attribute expire_date
          #
          #   @return [String, nil]
          optional :expire_date, String, api_name: :expireDate

          # @!attribute price
          #
          #   @return [Float, nil]
          optional :price, Float

          # @!attribute subscribe_date
          #
          #   @return [String, nil]
          optional :subscribe_date, String, api_name: :subscribeDate

          # @!method initialize(expire_date: nil, price: nil, subscribe_date: nil)
          #   @param expire_date [String]
          #   @param price [Float]
          #   @param subscribe_date [String]
        end
      end
    end
  end
end
