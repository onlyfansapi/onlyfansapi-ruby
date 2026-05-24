# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#create
    class TrialLinkCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::TrialLinkCreateResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::TrialLinkCreateResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfansapi::Models::TrialLinkCreateResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfansapi::Models::TrialLinkCreateResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::TrialLinkCreateResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::TrialLinkCreateResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::TrialLinkCreateResponse::Meta]
      #   @param _pagination [Onlyfansapi::Models::TrialLinkCreateResponse::Pagination]
      #   @param data [Onlyfansapi::Models::TrialLinkCreateResponse::Data]

      # @see Onlyfansapi::Models::TrialLinkCreateResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::TrialLinkCreateResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::TrialLinkCreateResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::TrialLinkCreateResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::TrialLinkCreateResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::TrialLinkCreateResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::TrialLinkCreateResponse#_pagination
      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      # @see Onlyfansapi::Models::TrialLinkCreateResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute claim_counts
        #
        #   @return [Integer, nil]
        optional :claim_counts, Integer, api_name: :claimCounts

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute expired_at
        #
        #   @return [String, nil]
        optional :expired_at, String, api_name: :expiredAt

        # @!attribute is_finished
        #
        #   @return [Boolean, nil]
        optional :is_finished, Onlyfansapi::Internal::Type::Boolean, api_name: :isFinished

        # @!attribute subscribe_counts
        #
        #   @return [Integer, nil]
        optional :subscribe_counts, Integer, api_name: :subscribeCounts

        # @!attribute subscribe_days
        #
        #   @return [Integer, nil]
        optional :subscribe_days, Integer, api_name: :subscribeDays

        # @!attribute trial_link_name
        #
        #   @return [String, nil]
        optional :trial_link_name, String, api_name: :trialLinkName

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, claim_counts: nil, created_at: nil, expired_at: nil, is_finished: nil, subscribe_counts: nil, subscribe_days: nil, trial_link_name: nil, url: nil)
        #   @param id [Integer]
        #   @param claim_counts [Integer]
        #   @param created_at [String]
        #   @param expired_at [String]
        #   @param is_finished [Boolean]
        #   @param subscribe_counts [Integer]
        #   @param subscribe_days [Integer]
        #   @param trial_link_name [String]
        #   @param url [String]
      end
    end
  end
end
