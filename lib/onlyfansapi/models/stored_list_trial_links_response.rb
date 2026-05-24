# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Stored#list_trial_links
    class StoredListTrialLinksResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta]
      #   @param _pagination [Onlyfansapi::Models::StoredListTrialLinksResponse::Pagination]
      #   @param data [Onlyfansapi::Models::StoredListTrialLinksResponse::Data]

      # @see Onlyfansapi::Models::StoredListTrialLinksResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::StoredListTrialLinksResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::StoredListTrialLinksResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::StoredListTrialLinksResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::StoredListTrialLinksResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::StoredListTrialLinksResponse#_pagination
      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      # @see Onlyfansapi::Models::StoredListTrialLinksResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List>]

        class List < Onlyfansapi::Internal::Type::BaseModel
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
          #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Cost, nil]
          optional :cost, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Cost }

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
          #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Links, nil]
          optional :links, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Links }

          # @!attribute revenue
          #
          #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Revenue, nil]
          optional :revenue, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Revenue }

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
          #   @param cost [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Cost]
          #   @param created_at [String]
          #   @param expired_at [String, nil]
          #   @param is_finished [Boolean]
          #   @param links [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Links]
          #   @param revenue [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Revenue]
          #   @param subscribe_counts [Integer]
          #   @param subscribe_days [Integer]
          #   @param tags [Array<String>]
          #   @param trial_link_name [String]
          #   @param url [String]

          # @see Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List#cost
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

          # @see Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List#links
          class Links < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute related
            #
            #   @return [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Links::Related, nil]
            optional :related, -> { Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Links::Related }

            # @!method initialize(related: nil)
            #   @param related [Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Links::Related]

            # @see Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List::Links#related
            class Related < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute spenders
              #
              #   @return [String, nil]
              optional :spenders, String

              # @!attribute subscribers
              #
              #   @return [String, nil]
              optional :subscribers, String

              # @!method initialize(spenders: nil, subscribers: nil)
              #   @param spenders [String]
              #   @param subscribers [String]
            end
          end

          # @see Onlyfansapi::Models::StoredListTrialLinksResponse::Data::List#revenue
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
end
