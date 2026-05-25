# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Bundles#list
    class BundleListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::BundleListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::BundleListResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::BundleListResponse::Data>, nil]
      optional :data, -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::BundleListResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::BundleListResponse::Meta]
      #   @param data [Array<Onlyfans::Models::BundleListResponse::Data>]

      # @see Onlyfans::Models::BundleListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::BundleListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::BundleListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::BundleListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::BundleListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::BundleListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::BundleListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::BundleListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::BundleListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::BundleListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::BundleListResponse::Meta#_cache
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

        # @see Onlyfans::Models::BundleListResponse::Meta#_credits
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

        # @see Onlyfans::Models::BundleListResponse::Meta#_rate_limits
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

        # @!attribute can_buy
        #
        #   @return [Boolean, nil]
        optional :can_buy, Onlyfans::Internal::Type::Boolean, api_name: :canBuy

        # @!attribute discount
        #
        #   @return [Integer, nil]
        optional :discount, Integer

        # @!attribute duration
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute price
        #
        #   @return [Integer, nil]
        optional :price, Integer

        # @!method initialize(id: nil, can_buy: nil, discount: nil, duration: nil, price: nil)
        #   @param id [Integer]
        #   @param can_buy [Boolean]
        #   @param discount [Integer]
        #   @param duration [Integer]
        #   @param price [Integer]
      end
    end
  end
end
