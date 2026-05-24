# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#list_spenders
    class TrialLinkListSpendersResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfansapi::Models::TrialLinkListSpendersResponse::Data>, nil]
      optional :data,
               -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::TrialLinkListSpendersResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta]
      #   @param data [Array<Onlyfansapi::Models::TrialLinkListSpendersResponse::Data>]

      # @see Onlyfansapi::Models::TrialLinkListSpendersResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::TrialLinkListSpendersResponse::Meta#_rate_limits
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

      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute onlyfans_id
        #
        #   @return [String, nil]
        optional :onlyfans_id, String

        # @!attribute revenue
        #
        #   @return [Onlyfansapi::Models::TrialLinkListSpendersResponse::Data::Revenue, nil]
        optional :revenue, -> { Onlyfansapi::Models::TrialLinkListSpendersResponse::Data::Revenue }

        # @!attribute username
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(onlyfans_id: nil, revenue: nil, username: nil)
        #   @param onlyfans_id [String]
        #   @param revenue [Onlyfansapi::Models::TrialLinkListSpendersResponse::Data::Revenue]
        #   @param username [String]

        # @see Onlyfansapi::Models::TrialLinkListSpendersResponse::Data#revenue
        class Revenue < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute calculated_at
          #
          #   @return [String, nil]
          optional :calculated_at, String

          # @!attribute total
          #
          #   @return [Float, nil]
          optional :total, Float

          # @!method initialize(calculated_at: nil, total: nil)
          #   @param calculated_at [String]
          #   @param total [Float]
        end
      end
    end
  end
end
