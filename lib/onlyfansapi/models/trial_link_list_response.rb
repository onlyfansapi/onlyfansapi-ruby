# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrialLinks#list
    class TrialLinkListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::TrialLinkListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::TrialLinkListResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfansapi::Models::TrialLinkListResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfansapi::Models::TrialLinkListResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::TrialLinkListResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::TrialLinkListResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::TrialLinkListResponse::Meta]
      #   @param _pagination [Onlyfansapi::Models::TrialLinkListResponse::Pagination]
      #   @param data [Onlyfansapi::Models::TrialLinkListResponse::Data]

      # @see Onlyfansapi::Models::TrialLinkListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::TrialLinkListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::TrialLinkListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::TrialLinkListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::TrialLinkListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::TrialLinkListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::TrialLinkListResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::TrialLinkListResponse#_pagination
      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      # @see Onlyfansapi::Models::TrialLinkListResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::TrialLinkListResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::TrialLinkListResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfansapi::Models::TrialLinkListResponse::Data::List>]

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
          #   @return [Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links, nil]
          optional :links, -> { Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links }

          # @!attribute revenue
          #
          #   @return [Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue, nil]
          optional :revenue, -> { Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue }

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

          # @!method initialize(id: nil, claim_counts: nil, clicks_counts: nil, created_at: nil, expired_at: nil, is_finished: nil, links: nil, revenue: nil, subscribe_counts: nil, subscribe_days: nil, tags: nil, trial_link_name: nil, url: nil)
          #   @param id [Integer]
          #   @param claim_counts [Integer]
          #   @param clicks_counts [Integer]
          #   @param created_at [String]
          #   @param expired_at [String, nil]
          #   @param is_finished [Boolean]
          #   @param links [Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links]
          #   @param revenue [Onlyfansapi::Models::TrialLinkListResponse::Data::List::Revenue]
          #   @param subscribe_counts [Integer]
          #   @param subscribe_days [Integer]
          #   @param tags [Array<String>]
          #   @param trial_link_name [String]
          #   @param url [String]

          # @see Onlyfansapi::Models::TrialLinkListResponse::Data::List#links
          class Links < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute related
            #
            #   @return [Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related, nil]
            optional :related, -> { Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related }

            # @!method initialize(related: nil)
            #   @param related [Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links::Related]

            # @see Onlyfansapi::Models::TrialLinkListResponse::Data::List::Links#related
            class Related < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute subscribers
              #
              #   @return [String, nil]
              optional :subscribers, String

              # @!method initialize(subscribers: nil)
              #   @param subscribers [String]
            end
          end

          # @see Onlyfansapi::Models::TrialLinkListResponse::Data::List#revenue
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
