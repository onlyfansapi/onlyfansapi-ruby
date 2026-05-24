# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#retrieve
    class TrialLinkRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta]
      #   @param data [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data]

      # @see Onlyfansapi::Models::TrialLinkRetrieveResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::TrialLinkRetrieveResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::TrialLinkRetrieveResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute claim_counts
        #
        #   @return [Integer, nil]
        optional :claim_counts, Integer, api_name: :claimCounts

        # @!attribute clicks_counts
        #
        #   @return [Integer, nil]
        optional :clicks_counts, Integer, api_name: :clicksCounts

        # @!attribute cost
        #
        #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost, nil]
        optional :cost, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost }

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute expired_at
        #
        #   @return [String, nil]
        optional :expired_at, String, api_name: :expiredAt, nil?: true

        # @!attribute is_finished
        #
        #   @return [Boolean, nil]
        optional :is_finished, Onlyfansapi::Internal::Type::Boolean, api_name: :isFinished

        # @!attribute links
        #
        #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links, nil]
        optional :links, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links }

        # @!attribute revenue
        #
        #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue, nil]
        optional :revenue, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue }

        # @!attribute subscribe_counts
        #
        #   @return [Integer, nil]
        optional :subscribe_counts, Integer, api_name: :subscribeCounts

        # @!attribute subscribe_days
        #
        #   @return [Integer, nil]
        optional :subscribe_days, Integer, api_name: :subscribeDays

        # @!attribute tags
        #
        #   @return [Array<String>, nil]
        optional :tags, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!attribute trial_link_name
        #
        #   @return [String, nil]
        optional :trial_link_name, String, api_name: :trialLinkName

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(id: nil, claim_counts: nil, clicks_counts: nil, cost: nil, created_at: nil, expired_at: nil, is_finished: nil, links: nil, revenue: nil, subscribe_counts: nil, subscribe_days: nil, tags: nil, trial_link_name: nil, url: nil)
        #   @param id [Integer]
        #   @param claim_counts [Integer]
        #   @param clicks_counts [Integer]
        #   @param cost [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Cost]
        #   @param created_at [String]
        #   @param expired_at [String, nil]
        #   @param is_finished [Boolean]
        #   @param links [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links]
        #   @param revenue [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Revenue]
        #   @param subscribe_counts [Integer]
        #   @param subscribe_days [Integer]
        #   @param tags [Array<String>]
        #   @param trial_link_name [String]
        #   @param url [String]

        # @see Onlyfansapi::Models::TrialLinkRetrieveResponse::Data#cost
        class Cost < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute click_source_count
          #
          #   @return [Integer, nil]
          optional :click_source_count, Integer, api_name: :clickSourceCount

          # @!attribute input_mode
          #
          #   @return [String, nil]
          optional :input_mode, String, api_name: :inputMode, nil?: true

          # @!attribute input_value
          #
          #   @return [String, nil]
          optional :input_value, String, api_name: :inputValue, nil?: true

          # @!attribute per_click
          #
          #   @return [String, nil]
          optional :per_click, String, api_name: :perClick, nil?: true

          # @!attribute per_promo
          #
          #   @return [String, nil]
          optional :per_promo, String, api_name: :perPromo, nil?: true

          # @!attribute per_sub
          #
          #   @return [String, nil]
          optional :per_sub, String, api_name: :perSub, nil?: true

          # @!attribute subscriber_source_count
          #
          #   @return [Integer, nil]
          optional :subscriber_source_count, Integer, api_name: :subscriberSourceCount

          # @!method initialize(click_source_count: nil, input_mode: nil, input_value: nil, per_click: nil, per_promo: nil, per_sub: nil, subscriber_source_count: nil)
          #   @param click_source_count [Integer]
          #   @param input_mode [String, nil]
          #   @param input_value [String, nil]
          #   @param per_click [String, nil]
          #   @param per_promo [String, nil]
          #   @param per_sub [String, nil]
          #   @param subscriber_source_count [Integer]
        end

        # @see Onlyfansapi::Models::TrialLinkRetrieveResponse::Data#links
        class Links < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute related
          #
          #   @return [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related, nil]
          optional :related, -> { Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related }

          # @!method initialize(related: nil)
          #   @param related [Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links::Related]

          # @see Onlyfansapi::Models::TrialLinkRetrieveResponse::Data::Links#related
          class Related < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute subscribers
            #
            #   @return [String, nil]
            optional :subscribers, String

            # @!method initialize(subscribers: nil)
            #   @param subscribers [String]
          end
        end

        # @see Onlyfansapi::Models::TrialLinkRetrieveResponse::Data#revenue
        class Revenue < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute calculated_at
          #
          #   @return [String, nil]
          optional :calculated_at, String, api_name: :calculatedAt

          # @!attribute is_loading
          #
          #   @return [Boolean, nil]
          optional :is_loading, Onlyfansapi::Internal::Type::Boolean, api_name: :isLoading

          # @!attribute revenue_per_subscriber
          #
          #   @return [Float, nil]
          optional :revenue_per_subscriber, Float, api_name: :revenuePerSubscriber

          # @!attribute spenders_count
          #
          #   @return [Integer, nil]
          optional :spenders_count, Integer, api_name: :spendersCount

          # @!attribute total
          #
          #   @return [Float, nil]
          optional :total, Float

          # @!method initialize(calculated_at: nil, is_loading: nil, revenue_per_subscriber: nil, spenders_count: nil, total: nil)
          #   @param calculated_at [String]
          #   @param is_loading [Boolean]
          #   @param revenue_per_subscriber [Float]
          #   @param spenders_count [Integer]
          #   @param total [Float]
        end
      end
    end
  end
end
